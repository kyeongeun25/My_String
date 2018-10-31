DROP TABLE tbl_member;

CREATE TABLE tbl_member(
	id int(11) AUTO_INCREMENT PRIMARY KEY,
	username CHAR(50),
	password CHAR(50),
	name VARCHAR(50),
	telno VARCHAR(20),
	addr VARCHAR(125)
);

SELECT * FROM tbl_member;

DELETE FROM tbl_member;