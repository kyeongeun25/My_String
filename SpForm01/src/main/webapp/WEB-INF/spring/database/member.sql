-- member table을 생성
CREATE TABLE tbl_member(
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(25),
	addr VARCHAR(50),
	telno VARCHAR(25),
	email VARCHAR(25)
);

DESC tbl_member;

select * from tbl_member;

DROP TABLE tbl_member;