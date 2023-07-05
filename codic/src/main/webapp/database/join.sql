create database `CODIC`;
use `CODIC`;
/*
user_email 
RFC 2822 에 정의되어 있는 길이 64(주소부분) + @ + 255(도매인부분) = 320 이기 때문에 320으로 길이 제한을 둡니다.  
기능: 중복체크와 id 대신 사용합니다. 

user_password 
비밀번호 길이는 8자 이상이어야 하며, 15자리 이내로 지정합니다. 영문 대/소문자, 숫자, 특수문자 중 3종류 이상을 혼합하여 사용해야 합니다.

user_name 

user_phone_num 
XXX-XXXX-XXXX 포멧으로 15자리 제한을 둡니다.

user_nickname

user_check 
14세 미만 동의 1 동의 안할시 0

user_joindate 

user_status 
휴면상태  : 0 ,정상 : 1, 탈퇴상태 : 2
*/

CREATE TABLE `user_info` (
  `user_email` varchar(320) NOT NULL primary key,
  `user_password` varchar(15) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_phone_num` varchar(15) NOT NULL,
  `user_nickname` varchar(14) NOT NULL,
  `user_check` int NOT NULL,
  `user_joindate` timestamp NOT NULL default current_timestamp,
  `user_status` int NOT NULL
);

select * from `user_info`;
