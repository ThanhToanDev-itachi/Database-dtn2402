-- Xóa cơ sở dữ liệu ( nếu tồn tại )
DROP DATABASE IF EXISTS leson_01;
-- Tạo cơ sở dữ liệu 
CREATE DATABASE leson_01;

-- Hiển thị danh sách cơ sở dữ liệu
SHOW DATABASES;

-- Chọn database muốn thao tác 

USE leson_01;
-- Kiểu dữ liệu 
-- Số nguyên : TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
-- Số thực : FLOAT, DOUBLE
-- Chuỗi: VARCHAR(50), CHAR(50)
-- Kiểu thời gian: DATE (yyyy-MM-dd), TIME, DATETIME


-- XÓA bảng database 
DROP TABLE IF EXISTS department;
-- Tạo bảng

CREATE TABLE department (
 id INT,
 name VARCHAR(50),
 crated_date DATE
);

-- Thêm dữ liệu vào bảng
INSERT INTO department(id, name, crated_date)
VALUES (1, "Bảo vệ", "2020-04-19"),
	   (2, "Kinh doanh", "2020-06-29"),
       (3, "Giám đốc", "2019-11-15");

-- Hiện thị dữ liệu 
TABLE department;

-- Hoặc 
SELECT * FROM department;

-- Ràng buộc dữ liệu 
-- Khóa chính (PRIMARY KEY) 
-- 1. Một bảng có tối đa một khóa chính 
-- 2. Giá trị là duy nhất 
-- 3. Không được để trống bắt buộc phải có (NO NULL)
-- Tự động tăng: AUTO_INCREMENT

CREATE TABLE product (
 id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(50)
);

INSERT INTO product(id, name)
VALUES(1,"Chuột máy tính");
--
INSERT INTO product(id, name)
VALUES(2,"Chuột máy tính");
--
INSERT INTO product(name)
VALUES("Lap Top");

-- NOT NUll không được để trống 
DROP TABLE question;
CREATE TABLE question (
	id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(100)  NOT NULL
);
INSERT INTO question (content)
VALUES (NULL);
--
INSERT INTO question (content)
VALUES (" ");























