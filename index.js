import express from 'express'
import 'dotenv/config'
import router from './src/routes/index.js'
import cors from 'cors'
import cookieParser from 'cookie-parser'
import errorHandler from './src/middleware/errorHandler.js'
import fileUpload from 'express-fileupload'

const app = express()
const port = process.env.PORT || 5000

app.use(express.static('static'))
app.use(fileUpload({}))
app.use(express.json())
app.use(cookieParser())
app.use(cors())
app.use('/', router)
app.use(errorHandler)

const start = async () => {
  try {
    app.listen(port, () => console.log(`started on port ${port}`))
  } catch (e) {
    console.log(e)
  }
}

start()
