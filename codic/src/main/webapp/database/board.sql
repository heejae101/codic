use `CODIC`;

CREATE TABLE `board` (
  `board_id` int NOT NULL auto_increment primary key,
  `user_email` varchar(320) NOT NULL,
  `board_title` varchar(30) NOT NULL,
  `board_text` varchar(2000) NOT NULL,
  `board_view_count` int not NULL,
  `current_timestamp` timestamp NOT NULL default current_timestamp,
  `modified_timestamp` timestamp NOT NULL default current_timestamp on update current_timestamp
);

ALTER TABLE `board` ADD INDEX `user_email_idx` (`user_email`);

CREATE TABLE `board_img` (
	`file_id`	int	NOT NULL auto_increment primary key,
	`board_id`	int	NOT NULL,
	`user_email` varchar(320) NOT NULL,
	`file_path`	varchar(100) NOT NULL,
	`file_size`	double	NOT NULL,
	`file_name`	varchar(50)	NOT NULL,
	`file_extends`	varchar(10)	NOT NULL,
	CONSTRAINT `board_img_fk1` FOREIGN KEY (`board_id`) REFERENCES `board`(`board_id`),
	CONSTRAINT `board_img_fk2` FOREIGN KEY (`user_email`) REFERENCES `board`(`user_email`)
);

CREATE TABLE `board_coment` (
	`comment_id`	int	NOT NULL auto_increment primary key ,
	`board_id`	int	NOT NULL,
	`user_email`	varchar(320)	NOT NULL,
	`board_answer`	varchar(4000)	NOT NULL,
	`current_timestamp`	timestamp NOT NULL default current_timestamp,
	`modified_timestamp` timestamp NOT NULL default current_timestamp on update current_timestamp,
    CONSTRAINT `board_coment_fk1` FOREIGN KEY (`board_id`) REFERENCES `board`(`board_id`),
	CONSTRAINT `board_coment_fk2` FOREIGN KEY (`user_email`) REFERENCES `user_info`(`user_email`)
);

CREATE TABLE `coment_like` (
	`comment_id`	int	NOT NULL,
	`board_id`	int	NOT NULL,
	`user_email`	varchar(320)	NOT NULL,
	`user_like`	varchar(40)	NOT NULL,
    CONSTRAINT `coment_like_fk1` FOREIGN KEY (`user_email`) REFERENCES `user_info`(`user_email`)
);

/*
drop table board;
drop table board_img;
drop table board_coment;
drop table coment_like;
*/

select * from board;
select * from board_img;
select * from board_coment;
select * from coment_like;