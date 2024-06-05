import { Model, DataTypes } from 'sequelize'
import connection from '../connection.js'

const initUser = (sequelize, Types) => {
  class User extends Model {}

  User.init({
    id: {
      primaryKey: true,
      type: Types.UUID,
      defaultValue: Types.UUIDV4
    },
    name: {
      type: Types.STRING,
      allowNull: false
    },
    lastName: {
      type: Types.STRING
    },
    email: {
      type: Types.STRING,
      allowNull: false
    },
    password: {
      type: Types.STRING,
      allowNull: false
    },
    sex: {
      type: Types.ENUM('Male', 'Female')
    },
    photo: {
      type: Types.STRING
    },
    refreshToken: {
      type: Types.STRING
    },
    createdAt: {
      type: Types.DATE,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'User',
    tableName: 'Users',
    timestamps: true,
    updatedAt: false
  })

  return User
}

export default initUser(connection, DataTypes)
