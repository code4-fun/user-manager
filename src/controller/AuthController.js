import {validationResult} from "express-validator"
import ApiError from "../error/ApiError.js"
import AuthService from "../service/AuthService.js"

class AuthController{
  async register(req, res, next) {
    try {
      const validationErrors = validationResult(req)
      if (!validationErrors.isEmpty()) {
        return next(ApiError.badRequest(null, validationErrors.array()))
      }
      await AuthService.registerUser(req.body)
      return res.sendStatus(201)
    } catch (e) {
      next(e)
    }
  }

  async login(req, res, next) {
    try {
      const validationErrors = validationResult(req)
      if (!validationErrors.isEmpty()) {
        return next(ApiError.badRequest(null, validationErrors.array()))
      }
      const tokens = await AuthService.loginUser(req.body)
      res.cookie('refreshToken', tokens.refreshToken, {
        maxAge: 30 * 24 * 60 * 60 * 1000,
        httpOnly: true
      })
      return res.json({
        accessToken: tokens.accessToken
      })
    } catch (e) {
      next(e)
    }
  }

  async logout(req, res, next){
    try {
      const {refreshToken} = req.cookies
      await AuthService.logoutUser(refreshToken)
      res.clearCookie('refreshToken')
      return res.sendStatus(204)
    } catch (e) {
      next(e)
    }
  }

  async refresh(req, res, next){
    try{
      const {refreshToken} = req.cookies
      if(!refreshToken) return next(ApiError.unauthorized())
      const accessToken = await AuthService.refreshToken(refreshToken)
      return res.json({accessToken})
    } catch(e){
      next(e)
    }
  }
}

export default new AuthController()
