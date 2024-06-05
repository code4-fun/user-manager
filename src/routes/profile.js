import {Router} from 'express'
import {check} from 'express-validator'
import UserController from '../controller/UserController.js'
import authHandler from "../middleware/authHandler.js";

const router = Router()

router.put('/profile/:id', authHandler, [
  check('name')
    .optional()
    .isLength({min:2, max:50}).withMessage('Name must be between 2 and 50 characters'),
  check('lastName')
    .optional()
    .custom(value => {
      if (value === null) {
        return true
      }
      return typeof value === 'string' && value.length >= 2 && value.length <= 50
    }).withMessage('Last name must be between 2 and 50 characters'),
  check('email')
    .optional()
    .isLength({min:2, max:150}).withMessage('Email must be between 2 and 150 characters')
    .isEmail().withMessage('Invalid email format'),
  check('sex')
    .optional()
    .isIn(['Male', 'Female', null])
    .withMessage('Sex must be \'Male\' or \'Female\''),
  check('photo')
    .custom((value, { req }) => {
      if(!req?.files) return true
      return req.files.photo.size <= 10485760
    }).withMessage('Photo must be less than 10Mb')
    .custom((value, { req }) => {
      if(!req?.files) return true
      return req?.files?.photo && req.files.photo.mimetype.match(/^(image\/(jpg|jpeg|png))$/)
    }).withMessage('Only JPG, JPEG, PNG are allowed')
], UserController.update)

router.get('/profile/:id', authHandler, UserController.getOne)

router.get('/profiles', authHandler, UserController.getAll)

export default router
