-- Mênh đề SELECT 
SELECT CURRENT_DATE;
SELECT PI();
SELECT 1+1;
SELECT "KHOA";
-- Mệnh đề From 
SELECT *
FROM department;
-- *: Là tất cả


-- Mệnh đề WHERE
-- Toán tử: >, >=, <, <=, =, != (<>)
SELECT *
FROM department
WHERE department_id >= 5;
-- Mệnh đề kết hợp logic AND, OR
SELECT *
FROM department 
WHERE department_id >= 3 AND department_id <= 8 ;

-- Toán tử IN

SELECT *
FROM department 
WHERE department_id IN (2, 8, 9);

-- LIKE
-- _: Đại diện cho 1 kí tự 
-- %: Đại diện cho 0 hoặc nhiều ký tự 
SELECT * 
FROM department
WHERE department_name LIKE "%n%";

-- Mệnh đề LIMIT 
SELECT * 
FROM department
LIMIT 5;
SELECT * 
FROM department
LIMIT 6,3; -- Start,  number

-- 1000 
-- 10 --> 100
-- Page 1, 10
-- Page 2, 10
