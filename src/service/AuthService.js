import {User} from "../db/models/index.js"
import ApiError from "../error/ApiError.js"
import bcryptjs from "bcryptjs"
import jwt from "jsonwebtoken";

class AuthService{
  async registerUser(data){
    const {password, ...rest} = data

    const user = await User.findOne({
      where: {
        email: rest.email
      }
    })

    if(user) {
      throw ApiError.badRequest(`${rest.email} already in use`)
    }

    const hashedPassword = bcryptjs.hashSync(password, 7)
    await User.create({...rest, password: hashedPassword})
  }

  async loginUser(data){
    const {email, password} = data
    const user = await User.findOne({
      where: {
        email
      }
    })

    if (!user || !bcryptjs.compareSync(password, user.password)) {
      throw ApiError.unauthorized('Invalid credentials')
    }

    const payload = {
      id: user.id,
      email: user.email,
      name: user.name
    }
    const accessToken = this.generateAccessToken(payload)
    const refreshToken = this.generateRefreshToken(payload)

    user.refreshToken = refreshToken
    await user.save()

    return {
      accessToken,
      refreshToken
    }
  }

  async logoutUser(refreshToken){
    let payload
    jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET, (err, data) => {
      if (err) {
        throw ApiError.unauthorized('Invalid refresh token')
      } else {
        payload = data
      }
    })

    const user = await User.findOne({
      where: {
        email: payload.email
      }
    })

    if(user) {
      await User.update({
        refreshToken: null
      }, {
        where: {
          email: payload.email
        }
      });
    } else {
      throw ApiError.notFound('User was not found')
    }
  }

  async refreshToken(token){
    try {
      const payload = jwt.verify(token, process.env.REFRESH_TOKEN_SECRET)
      const user = await User.findOne({
        where: {
          email: payload.email
        }
      })

      const newPayload = {
        id: user.id,
        email: user.email,
        name: user.name
      }
      return this.generateAccessToken(newPayload)
    } catch (e) {
      throw ApiError.forbidden()
    }
  }

  generateAccessToken(payload){
    return jwt.sign(payload, process.env.ACCESS_TOKEN_SECRET, { expiresIn: '1h' })
  }

  generateRefreshToken(payload){
    return jwt.sign(payload, process.env.REFRESH_TOKEN_SECRET, { expiresIn: '1d' })
  }
}

export default new AuthService()
