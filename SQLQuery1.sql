
create database HE150490_PRJ301
use HE150490_PRJ301
create table Class(
	classID int identity(1,1) not null primary key,
	className nvarchar(100) not null,
	studentID int not null,
	teacherID int not null
	
	CONSTRAINT fk_IdTeacher  Foreign Key (teacherID)  REFERENCES teacher(teacherID),
	CONSTRAINT fk_IdStudent  Foreign Key (studentID)  REFERENCES student(IdStudent),
)

create table teacher(
	teacherID int IDENTITY(1,1) primary key,
	[name] nvarchar(50),
	[dob] datetime,
	classID int not null,
	

)
create table student 
(
	IdStudent int IDENTITY(1,1) primary key,
	[name] nvarchar(50),
	[dob] datetime,
	classID int not null,
)

ALTER TABLE student
ADD CONSTRAINT fk_studentId
  FOREIGN KEY (classID)
  REFERENCES Class (classID);
  ALTER TABLE teacher
ADD CONSTRAINT fk_teacherId
  FOREIGN KEY (classID)
  REFERENCES Class (classID);