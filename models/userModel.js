module.exports = (sequlize,DataTypes) => {
    const User = sequlize.define("user",{
        email : {
            type : DataTypes.STRING,
            allowNull:false
        },
        username : {
            type : DataTypes.STRING,
            allowNull:false
        },
        password : {
            type : DataTypes.STRING,
            allowNull:false
        }
    })
    return User
}