DROP DATABASE IF EXISTS uncloud_db;

CREATE DATABASE uncloud_db;
USE uncloud_db;

CREATE TABLE User (
id INTEGER NOT NULL auto_increment
email VARCHAR(255) NOT NULL,
username VARCHAR(255) NOT NULL UNIQUE, 
password VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE posts (
	id INT NOT NULL AUTO_INCREMENT,
	post_name VARCHAR(255) NOT NULL,
    username_author VARCHAR(255) NOT NULL,
    post_body TEXT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL,
	PRIMARY KEY (id)
);