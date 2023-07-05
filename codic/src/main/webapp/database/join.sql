create database `CODIC`;

use `CODIC`;
CREATE TABLE `user_info` (
	`user_email`	varchar(20)	NOT NULL,
	`user_password`	varchar(20)	NULL,
	`user_name`	varchar(20)	NULL,
	`user_phone_num`	int(15)	NULL,
	`user_nickname`	varchar(14)	NULL,
	`user_check`	int(1)	NULL,
	`user_joindate`	timestamp	NULL,
	`user_status`	int(1)	NULL
);

ALTER TABLE `user_info` ADD CONSTRAINT `PK_USER_INFO` PRIMARY KEY (
	`user_email`
);

select * from `user_info`;