CREATE DATABASE assigment_01;
USE assigment_01;

-- Tạo bảng department
CREATE TABLE department (
	departmentid INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(50)
);
CREATE TABLE position (
	 positionid INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(50)
);
CREATE TABLE account (
	accountid INT PRIMARY KEY AUTO_INCREMENT,
    email varchar(50),
    username varchar(50),
    fullname varchar(50),
    departmentid INT ,
    positionid INT 
);
-- Table 4: Group
-- ∙ GroupID: định danh của nhóm (auto increment)
-- ∙ GroupName: tên nhóm
-- ∙ CreatorID: id của người tạo group
-- ∙ CreateDate: ngày tạo group
CREATE TABLE ggroup (
	groupid INT PRIMARY KEY AUTO_INCREMENT,
    groupname varchar(50),
    creatorid INT,
    createdate DATE
);

-- Table 5: GroupAccount
-- ∙ GroupID: định danh của nhóm
-- ∙ AccountID: định danh của User
-- ∙ JoinDate: Ngày user tham gia vào nhóm
CREATE TABLE groupAccount(
	groupid INT,
    accountid INT,
    joinDate Date
);
-- Table 6: TypeQuestion
-- ∙ TypeID: định danh của loại câu hỏi (auto increment)
-- ∙ TypeName: tên của loại câu hỏi (Essay, Multiple-Choice)
CREATE TABLE typequestion (
	typeid INT PRIMARY KEY AUTO_INCREMENT,
    typename varchar(50)
);

-- Table 7: CategoryQuestion
-- ∙ CategoryID: định danh của chủ đề câu hỏi (auto increment)
-- ∙ CategoryName: tên của chủ đề câu hỏi (Java, .NET, SQL, Postman, Ruby,…)
CREATE TABLE categoryQuestion (
	categoryid INT PRIMARY KEY AUTO_INCREMENT,
    categoryname varchar(100)
);
-- Table 8: Question
-- ∙ QuestionID: định danh của câu hỏi (auto increment)
-- ∙ Content: nội dung của câu hỏi
-- ∙ CategoryID: định danh của chủ đề câu hỏi
-- ∙ TypeID: định danh của loại câu hỏi
-- ∙ CreatorID: id của người tạo câu hỏi
-- ∙ CreateDate: ngày tạo câu hỏi 
CREATE TABLE question (
	questionid INT PRIMARY KEY AUTO_INCREMENT,
    content varchar(100),
    categoryid int,
    typeid INT,
    creayorid INT,
    createDate DATE
);

-- Table 9: Answer
-- ∙ AnswerID: định danh của câu trả lời (auto increment)
 -- ∙ Content: nội dung của câu trả lời
-- ∙ QuestionID: định danh của câu hỏi
-- ∙ isCorrect: câu trả lời này đúng hay sai

CREATE TABLE answer (
	answerid INT PRIMARY KEY  AUTO_INCREMENT,
    content varchar(100),
    questionid INT,
    iscorrect varchar(100)
);
-- Table 10: Exam
-- ∙ ExamID: định danh của đề thi (auto increment)
-- ∙ Code: mã đề thi
-- ∙ Title: tiêu đề của đề thi
-- ∙ CategoryID: định danh của chủ đề thi
-- ∙ Duration: thời gian thi
-- ∙ CreatorID: id của người tạo đề thi
-- ∙ CreateDate: ngày tạo đề thi
CREATE TABLE exam (
	examid INT PRIMARY KEY AUTO_INCREMENT,
    code varchar(50),
    title varchar(200),
    categoryid INT,
    duration varchar(50),
    careatorid INT,
    createdate DATE
);
-- Table 11: ExamQuestion
-- ∙ ExamID: định danh của đề thi
-- ∙ QuestionID: định danh của câu hỏi
CREATE TABLE examquestion (
 examid INT PRIMARY KEY AUTO_INCREMENT,
 questionid INT
);
