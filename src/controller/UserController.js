import {validationResult} from 'express-validator'
import UserService from '../service/UserService.js'
import ApiError from '../error/ApiError.js'

class UserController{
  async update(req, res, next) {
    try {
      const validationErrors = validationResult(req)
      if (!validationErrors.isEmpty()) {
        return next(ApiError.badRequest(null, validationErrors.array()))
      }
      if (Object.keys(req.body).length === 0) {
        return next(ApiError.badRequest('No data provided to update'))
      }
      const user = await UserService.updateUser(req.params.id, req.body, req?.files)
      res.json(user)
    } catch(e) {
      next(e)
    }
  }

  async getOne(req, res, next) {
    try{
      const user = await UserService.getUserById(req.params.id)
      if(!user){
        return next(ApiError.notFound('User not found'))
      }
      return res.json(user)
    } catch(e){
      next(e)
    }
  }

  async getAll(req, res, next){
    try {
      const page = parseInt(req.query.page) || 1
      const perPage = 10

      const result = await UserService.getAllUsers(page, perPage)
      const users = result.rows
      const totalCount = result.count

      return res.json({
        users,
        totalCount,
        currentPage: page
      })
    } catch (e) {
      next(e)
    }
  }
}

export default new UserController()
