import * as uuid from 'uuid'
import { resolve } from 'node:path'
import * as fsPromises from 'node:fs/promises'

class FileService {
  async save(file) {
    if (!file) return undefined
    const [, ext] = file.mimetype.split('/')
    const fileName = uuid.v4() + '.' + ext
    const filePath = resolve('static', fileName)
    await file.mv(filePath)
    return fileName
  }

  async remove(fileName) {
    if (!fileName) return undefined
    const filePath = resolve('static', fileName)
    try {
      await fsPromises.unlink(filePath)
      return true
    } catch (err) {
      return false
    }
  }
}

export default new FileService()
