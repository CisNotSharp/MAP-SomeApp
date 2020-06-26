DROP USER IF EXISTS `l7_api_user`@`localhost`;
DROP DATABASE IF EXISTS `l7_api_db`;

CREATE DATABASE IF NOT EXISTS `l7_api_db` /*!40100 COLLATE 'utf8mb4_general_ci' */;

CREATE USER IF NOT EXISTS `l7_api_user`@`localhost` IDENTIFIED BY 'Secret1';
GRANT USAGE ON *.* TO 'l7_api_db'@localhost IDENTIFIED BY 'Secret1';
GRANT ALL privileges ON `l7_api_db`.* TO 'l7_api_user'@localhost;