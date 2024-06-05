import {User} from '../db/models/index.js'
import ApiError from "../error/ApiError.js"
import FileService from "./FileService.js"

class UserService{
  async getAllUsers(page = 1, perPage = 10) {
    const offset = (page - 1) * perPage
    return User.findAndCountAll({
      order: [
        ['createdAt', 'ASC']
      ],
      attributes: [
        'id', 'name', 'lastName', 'email', 'sex', 'photo', 'createdAt'
      ],
      limit: perPage,
      offset: offset
    })
  }

  async updateUser(id, data, files){
    const user = await this.getUserById(id)
    if(!user){
      throw ApiError.notFound('User not found')
    }

    let fileName = undefined
    if(files){
      user.photo && await FileService.remove(user.photo)
      fileName = await FileService.save(files.photo)
    }

    await User.update(
      {
        ...(data.name !== undefined && {name: data.name}),
        ...(data.lastName !== undefined && {lastName: data.lastName}),
        ...(data.email !== undefined && {email: data.email}),
        ...(data.sex !== undefined && {sex: data.sex}),
        ...(fileName !== undefined && {photo: fileName})
      },
      {
        where: {
          id
        }
      }
    )
    return await this.getUserById(id)
  }

  async getUserById(id){
    return await User.findByPk(id, {
      attributes: [
        'id', 'name', 'lastName', 'email', 'sex', 'photo', 'createdAt'
      ],
    })
  }
}

export default new UserService()
