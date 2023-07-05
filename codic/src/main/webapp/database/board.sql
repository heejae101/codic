use `CODIC`;

CREATE TABLE `board` (
  `board_id` int NOT NULL auto_increment primary key,
  `user_email` varchar(20) NOT NULL,
  `board_title` varchar(30) NOT NULL,
  `board_text` varchar(2000) NOT NULL,
  `board_view_count` int not NULL,
  `current_timestamp` timestamp NOT NULL,
  `modified_timestamp` timestamp NOT NULL
);

CREATE TABLE `board_img` (
	`file_id`	int	NOT NULL,
	`board_id`	int	NOT NULL,
	`user_email`	varchar(20)	NOT NULL,
	`file_path`	varchar(50)	NULL,
	`file_size`	double	NULL,
	`file_name`	varchar(50)	NULL,
	`file_extends`	varchar(10)	NULL
);

CREATE TABLE `board_coment` (
	`comment_id`	int	NOT NULL,
	`board_id`	int	NOT NULL,
	`user_email`	varchar(20)	NOT NULL,
	`board_answer`	varchar(4000)	NULL,
	`current_timestamp`	timestamp	NULL,
	`modified_timestamp`	timestamp	NULL
);

select * from board;
select * from board_img;
select * from board_coment;
