const { DataTypes } = require('sequelize');
const sequelize = require('../database');

const Registration = sequelize.define('User', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    firstName: {
        type: DataTypes.STRING(50),
        allowNull: false,
    },
    lastName: {
        type: DataTypes.STRING(50),
        allowNull: false,
    },
    phoneNumber: {
        type: DataTypes.INTEGER(10),
        allowNull: false,
    },
    email: {
        type: DataTypes.STRING(50),
        allowNull: false,
        unique: true,
    },
    password: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
}, {
    tableName: 'userAuthentication',
    timestamps: false,
});

module.exports = Registration;
