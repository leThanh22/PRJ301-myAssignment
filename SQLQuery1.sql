create database HE150490_PRJ301
use HE150490_PRJ301
create table Class(
	classId int identity(1,1) primary key,
	className varchar(max) not null,
)
create table [Subject](
	subjectId int identity(1,1) primary key,
	subjectName varchar(max) not null,
)
create table [User](
 id int identity(1,1) primary key,
 username varchar(20) not null,
 pass varchar(50) not null,
 fullname varchar(50) not null,
 classId int not null,
 imageUser varchar(max) not null,
 subjectId int not null,
 CONSTRAINT fk_classId FOREIGN KEY (classId) REFERENCES Class(classId), 
 CONSTRAINT fk_subjectId FOREIGN KEY (subjectId) REFERENCES [Subject](subjectId),
)
insert into Class values('SE1613'),('AI1502'),('SE1628'),('IOT1513'),('SWE1603'),('SE1526'),('SE1620')
insert into [Subject] values('PRF192'),('PRJ301'),('DBI202'),('PRO192'),('SWP490'),('SWE201c'),('IOT102')
insert into [User] 
values('student1','1234567','Le Kha Thanh',1,'image2.jpg',3)
insert into [User] 
values('donghp255','1234567','Ho Phuong Dong',2,'image3.jpg',4)
insert into [User] 
values('duydc410','1234567','Do Cong Duy',3,'image4.jpg',2)
insert into [User] 
values('hoanpk213','1234567','Phan Khac Hoan',1,'image2.jpg',2)
insert into [User] 
values('hoanh142','1234567','Nguyen Huu Hoa',6,'image4.jpg',7)
insert into [User] 
values('hinhnb244','1234567','Nguyen Ba Hinh',5,'image2.jpg',1)
insert into [User] 
values('diennx1111','1234567','Nguyen Xuan Dien',4,'image2.jpg',2)
insert into [User] 
values('vund10','1234567','Nguyen Dinh Vu',7,'image2.jpg',4)
insert into [User] 
values('student9','1234567','Ngo Trung Kien',1,'image2.jpg',7)
insert into [User] 
values('student10','1234567','Do Thanh Huyen',2,'image2.jpg',6)
insert into [User] 
values('student11','1234567','Le Ngoc Binh',5,'image2.jpg',5)
insert into [User] 
values('student12','1234567','Le Hong Ngoc',4,'image2.jpg',6)