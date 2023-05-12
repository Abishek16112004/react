const { DataTypes } = require('sequelize');
const sequelize = require('../database');
const { body, checkSchema, validationResult } = require('express-validator');

const Login = sequelize.define(
  'User',
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    email: {
      type: DataTypes.STRING(50),
      allowNull: false,
      unique: true,
      validate: {
        isEmail: {
          args: true,
          msg: 'Please enter a valid email address',
        },
        notEmpty: {
          args: true,
          msg: 'Email address is required',
        },
      },
    },
    password: {
      type: DataTypes.STRING(100),
      allowNull: false,
      validate: {
        len: {
          args: [8, 100],
          msg: 'Password must be between 8 and 100 characters long',
        },
        notEmpty: {
          args: true,
          msg: 'Password is required',
        },
      },
    },
  },
  {
    tableName: 'userAuthentication',
    timestamps: false,
  }
);

module.exports = Login;
