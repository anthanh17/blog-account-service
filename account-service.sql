SHOW DATABASES;

CREATE DATABASE account_blog;

USE account_blog;

CREATE TABLE `account` (
	`account_id` INT PRIMARY KEY AUTO_INCREMENT,
	`global_account_id` VARCHAR(50) NOT NULL
);

CREATE TABLE `account_info` (
	`account_id` INT NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`phone` VARCHAR(30),
	`username` VARCHAR(100) NOT NULL,
	`lastname` VARCHAR(30) NOT NULL,
	`firstname` VARCHAR(30) NOT NULL,
	`birthday` DATE,
	`gender` VARCHAR(10),
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP NOT NULL,
	`deleted_at` TIMESTAMP NOT NULL
);

CREATE TABLE `account_status` (
	`account_id` INT NOT NULL,
	`role` varchar(20) NOT NULL,
	`account_type` varchar(20) NOT NULL,
	`activated` boolean NOT NULL,
	`deleted` boolean NOT NULL
);

ALTER TABLE `account_info`
	ADD FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

ALTER TABLE `account_status`
	ADD FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);
