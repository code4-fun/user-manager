import {Router} from 'express'
import {check} from 'express-validator'
import AuthController from "../controller/AuthController.js";

const router = Router()

router.post('/register', [
  check('name').notEmpty().withMessage('Name is required'),
  check('email')
    .notEmpty().withMessage('Email is required')
    .isEmail().withMessage('Invalid email format'),
  check('password')
    .notEmpty().withMessage('Password is required')
    .isLength({min:3, max:30}).withMessage('Password must be between 3 and 30 characters')
], AuthController.register)

router.post('/login', [
  check('email').notEmpty().withMessage('Email is required'),
  check('password').notEmpty().withMessage('Password is required')
], AuthController.login)

router.post('/logout', AuthController.logout)

router.post('/token', AuthController.refresh)

export default router
