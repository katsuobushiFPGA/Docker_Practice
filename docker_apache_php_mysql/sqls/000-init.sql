CREATE DATABASE testdb;
USE testdb;

CREATE TABLE `t_admin` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `login_id` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    PRIMARY KEY(`id`)
);
INSERT INTO `t_admin` VALUES (NULL, 'login', 'password');