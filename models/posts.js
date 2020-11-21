module.exports = function(sequelize, DataTypes) {
    const Post = sequelize.define('posts', {
      post_name: {
        type: DataTypes.STRING,
        allowNull: false
        },
      username_author: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
      },
      post_body: {
        type: DataTypes.TEXT,
        allowNull: false
      },
    }, {
      tableName: 'posts'
    }
    )
return Post
};