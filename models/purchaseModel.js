module.exports = (sequlize,DataTypes) => {
    const Purchase = sequlize.define("purchase",{
        pdate : {
            type : DataTypes.DATE,
            allowNull:false
        },
        user_id : {
            type : DataTypes.INTEGER,
            allowNull:false
        },
        share_id : {
            type : DataTypes.INTEGER,
            allowNull:false
        },
        qty : {
            type : DataTypes.INTEGER,
            allowNull:false
        },
        rate : {
            type : DataTypes.FLOAT,
            allowNull:false
        },
        brokerage : {
            type : DataTypes.FLOAT,
            allowNull:false
        },
        gstbrok : {
            type : DataTypes.FLOAT,
            allowNull:false
        },
        security : {
            type : DataTypes.FLOAT,
            allowNull:false
        },
        other : {
            type : DataTypes.FLOAT,
            allowNull:false
        },
        net : {
            type : DataTypes.DOUBLE,
            allowNull:false
        },
        avg : {
            type : DataTypes.FLOAT,
            allowNull:false
        }
    })
    return Purchase
}