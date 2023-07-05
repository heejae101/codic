use `CODIC`;

CREATE TABLE `category` (
	`category_no`	int	NOT NULL auto_increment primary key,
	`category_name`	varchar(30)	NOT NULL,
	`category_key`	varchar(30)	NOT NULL
);

CREATE TABLE `content` (
	`content_id`	int	NOT NULL auto_increment primary key,
	`category_no`	int	NOT NULL,
	`content_title`	varchar(30) NOT NULL,
	`content_text`	varchar(4000) NOT NULL,
	`content_ views` int NOT NULL,
	`content_creation date`	date NOT NULL,
    CONSTRAINT `content_fk1` FOREIGN KEY (`category_no`) REFERENCES `category`(`category_no`)
);

CREATE TABLE `content_img` (
	`file_id`	int	NOT NULL auto_increment primary key,
	`content_id`	int	NOT NULL,
	`category_no`	int	NOT NULL,
	`file_extends`	varchar(10)	NOT NULL,
	`file_name`	varchar(50)	NOT NULL,
	`file_size`	INT NOT NULL,
	`file_path`	varchar(50)	NOT NULL,
    CONSTRAINT `content_img_fk1` FOREIGN KEY (`content_id`) REFERENCES `content`(`content_id`),
    CONSTRAINT `content_img_fk2` FOREIGN KEY (`category_no`) REFERENCES `content`(`category_no`)
);

CREATE TABLE `content_like` (
	`content_like_id` int NOT NULL auto_increment primary key,
	`content_id` int NOT NULL,
	`category_no` int NOT NULL,
	`user_like`	varchar(100) NOT NULL,
    CONSTRAINT `content_like_fk1` FOREIGN KEY (`category_no`) REFERENCES `content`(`category_no`)
);

CREATE TABLE `user_wishList` (
	`user_email`	varchar(320) NOT NULL,
	`content_id`	int	NOT NULL,
	`category_no`	int	NOT NULL,
    CONSTRAINT `user_wishList_fk1` FOREIGN KEY (`user_email`) REFERENCES `user_info`(`user_email`),
    CONSTRAINT `user_wishList_fk2` FOREIGN KEY (`content_id`) REFERENCES `content`(`content_id`),
    CONSTRAINT `user_wishList_fk3` FOREIGN KEY (`category_no`) REFERENCES `content`(`category_no`)
);

CREATE TABLE `content_coment` (
	`content_coment_id`	int	NOT NULL auto_increment primary key,
	`user_email`	varchar(320) NOT NULL,
	`content_id`	int	NOT NULL,
	`category_no`	int	NOT NULL,
	`content_coment_text`	varchar(4000) NOT NULL,
	`current_timestamp`	timestamp NOT NULL default current_timestamp,
	`modified_timstamp`	timestamp NOT NULL default current_timestamp on update current_timestamp,
    CONSTRAINT `content_coment_fk1` FOREIGN KEY (`user_email`) REFERENCES `user_info`(`user_email`),
    CONSTRAINT `content_coment_fk2` FOREIGN KEY (`content_id`) REFERENCES `content`(`content_id`),
    CONSTRAINT `content_coment_fk3` FOREIGN KEY (`category_no`) REFERENCES `content`(`category_no`)
);

CREATE TABLE `visitor_counter` (
	`count` int NOT NULL auto_increment primary key,
	`date`	date NOT NULL,
	`unique_visitors` varchar(100) NOT NULL
);

select * from `visitor_counter`;

