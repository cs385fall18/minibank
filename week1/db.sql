
CREATE DATABASE IF NOT EXISTS minibank DEFAULT CHARACTER SET utf8mb4;

USE minibank;

CREATE TABLE IF NOT EXISTS account ( 
    id INTEGER NOT NULL AUTO_INCREMENT,
    username CHAR(30) NOT NULL,
    password CHAR(32) NOT NULL,
    salt CHAR(32) NOT NULL,
    timestamp INT UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    UNIQUE KEY(username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE USER IF NOT EXISTS 'minibank'@'%' IDENTIFIED by 'minibank';

GRANT ALL PRIVILEGES ON minibank.* to 'minibank'@'%';

FLUSH PRIVILEGES;