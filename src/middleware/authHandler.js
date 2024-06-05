import jwt from 'jsonwebtoken'
import ApiError from '../error/ApiError.js'

const authHandler = (req, res, next) => {
  if (req.method === "OPTIONS") {
    next()
  }

  const authHeader = req.headers['authorization']
  const token = authHeader && authHeader.split(' ')[1]
  if(token == null){
    return next(ApiError.unauthorized())
  }

  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, payload) => {
    if(err){
      return next(ApiError.forbidden())
    }
    req.user = payload
    next()
  })
}

export default authHandler
