create database HE150490_PRJ301_SM22
use HE150490_PRJ301_SM22
create table Course(
	cid int identity(1,1) primary key,
	cname varchar(50) not null,
)
create table Instructor(
	iid int identity(1,1) primary key,
	iname varchar(150) not null,
)
create table Student(
	studentid int identity(1,1) primary key,
	sname varchar(150) not null,
	code varchar(20) not null,
	images varchar(max) not null,
)
create table [Group](
	gid int identity(1,1) primary key,
	cid int ,
	studentid int ,
	CONSTRAINT fk_cid FOREIGN KEY (cid) REFERENCES Course(cid),
	CONSTRAINT fk_studentid FOREIGN KEY (studentid) REFERENCES Student(studentid),
)
create table Room(
	rid int identity(1,1) primary key,
	rname varchar(50) not null,
)
create table Timeslot(
	tid int identity(1,1) primary key,
	tname varchar(50) not null,
)
create table [Status](
	statusid int identity(1,1) primary key,
	stname varchar(20) not null,
	recordtime date not null,
)
create table Lession(
	lid int identity(1,1) primary key,
	gid int ,
	iid int ,
	tid int ,
	rid int ,
	CONSTRAINT fk_gid FOREIGN KEY (gid) REFERENCES [Group](gid),
	CONSTRAINT fk_iid FOREIGN KEY (iid) REFERENCES Instructor(iid),
	CONSTRAINT fk_tid FOREIGN KEY (tid) REFERENCES Timeslot(tid),
	CONSTRAINT fk_rid FOREIGN KEY (rid) REFERENCES Room(rid),
	
)
create table Account(
	userId int IDENTITY(1,1) primary key,
	[name] varchar(max),
	[password] nvarchar(max),
	isAdmin bit,
	email varchar(max),
)

	--insert table course
insert into Course values ('PRF192'),('PRJ301'),('DBI202'),('PRO192'),('SWP490'),('SWE201c'),('IOT102'),('LAB211'),('WEB201c'),('CSD201'),('NWC203c'),('CSD301')
	-- insert table instructor
insert into Instructor values ('Ngo Tung Son'), ('Phung Duy Khuong'), ('Tran Quy Ban'), ('Vuong Minh Tuan'),('Hoang Thanh Tung'),('Nguyen Duc Anh'),('Le Thi Tam')
	-- insert table group
	
insert into [Group] values ('SE1613','PRF192')
insert into [Group] values ('SE1613','PRJ301')
insert into [Group] values ('SE1613','DBI202')
insert into [Group] values ('AI1502','PRO192')
insert into [Group] values ('AI1502','LAB211')
insert into [Group] values ('AI1502','NWC203c')
insert into [Group] values ('IOT1602','IOT102')
insert into [Group] values ('IOT1602','DBI202')
insert into [Group] values ('IOT1602','PRF192')
insert into [Group] values ('SE1636','PRJ301')
insert into [Group] values ('SE1636','SWP490')
insert into [Group] values ('SE1636','LAB211')
insert into [Group] values ('SE1615-NET','SWE201c')
insert into [Group] values ('SE1615-NET','WEB201c')
insert into [Group] values ('SE1615-NET','CSD201')
insert into [Group] values ('SE1518','DBI202')
insert into [Group] values ('SE1518','IOT102')
insert into [Group] values ('SE1518','PRF192')
insert into [Group] values ('SE1702','PRO192')
insert into [Group] values ('SE1702','DBI202')
insert into [Group] values ('SE1702','LAB211')
insert into [Group] values ('IS1503','SWP490')
insert into [Group] values ('IS1503','DBI202')
insert into [Group] values ('IS1503','SWE201c')
insert into [Group] values ('AI1602','CSD201')
insert into [Group] values ('AI1602','LAB211')
insert into [Group] values ('AI1602','NWC203c')
insert into [Group] values ('SE1630','IOT102')
insert into [Group] values ('SE1630','WEB201c')
insert into [Group] values ('SE1630','PRJ301')
insert into [Group] values ('KS1701','LAB211')
insert into [Group] values ('KS1701','PRJ301')
insert into [Group] values ('KS1701','DBI202')
insert into [Group] values ('SE1528','SWE201c')
insert into [Group] values ('SE1528','WEB201c')
insert into [Group] values ('SE1528','PRO192')
insert into [Group] values ('AI1603','IOT102')
insert into [Group] values ('AI1603','CSD301')
insert into [Group] values ('AI1603','NWC203c')
insert into [Group] values ('SE1604','SWP490')
insert into [Group] values ('SE1604','PRJ301')
insert into [Group] values ('SE1604','WEB201c')
insert into [Group] values ('IOT1702','IOT102')
insert into [Group] values ('IOT1702','PRO192')
insert into [Group] values ('IOT1702','DBI202')
insert into [Group] values ('SE1546','PRF192')
insert into [Group] values ('SE1546','CSD201')
insert into [Group] values ('SE1546','DBI202')
insert into [Group] values ('SE1723','PRO192')
insert into [Group] values ('SE1723','NWC203c')
insert into [Group] values ('SE1723','WEB201c')
insert into [Group] values ('SE1714','SWE201c')
insert into [Group] values ('SE1714','PRJ301')
insert into [Group] values ('SE1714','IOT102')
insert into [Group] values ('IS1603','CSD201')
insert into [Group] values ('IS1603','PRO192')
insert into [Group] values ('IS1603','NWC203c')
insert into [Group] values ('SE1725','WEB201c')
insert into [Group] values ('SE1725','PRJ301')
insert into [Group] values ('SE1725','SWE201c')
	--insert table status
insert into [Status] values ('Absent'),('Present')
	--insert table Student
insert into Student values ('Lê Khả Thành','HE150490','images_man.jpg')
insert into Student values ('Nguyễn Bá Hinh','HE150001','images_man.jpg')
insert into Student values ('Vương Công Trung','HE150002','images_man.jpg')
insert into Student values ('Nguyễn Xuân Điền','HE150003','images_man.jpg')
insert into Student values ('Hồ Phương Đồng','HE150004','images_man.jpg')
insert into Student values ('Ngô Trung Kiên','HE150005','images_man.jpg')
insert into Student values ('Kiều Công Hoàng','HE150006','images_man.jpg')
insert into Student values ('Nguyễn Hữu Hòa','HE150007','images_man.jpg')
insert into Student values ('Nguyễn Bá Hùng','HE150008','images_man.jpg')
insert into Student values ('Nguyễn Hữu Dũng','HE150009','images_man.jpg')
insert into Student values ('Dương Thị Trang','HE150010','images_woman .jpg')
insert into Student values ('Nguyễn Thị Thảo','HE150011','images_woman .jpg')
insert into Student values ('Lê Hồng Ngọc','HE150012','images_woman .jpg')
insert into Student values ('Nguyễn Thị Lụa','HE150013','images_woman .jpg')
insert into Student values ('Nguyễn Thị Hiền','HE150014','images_woman .jpg')
insert into Student values ('Nguyễn Thanh Thảo','HE150015','images_woman .jpg')
insert into Student values ('Đỗ Công Duy','HE150016','images_man.jpg')
insert into Student values ('Phan Khắc Hoàn','HE150017','images_man.jpg')
insert into Student values ('Nguyễn Thị Như Ý','HE150018','images_woman .jpg')
insert into Student values ('Nguyễn Thị Hương Lan','HE150019','images_woman .jpg')
insert into Student values ('Nguyễn Nhật Nam','HE150020','images_man.jpg')
insert into Student values ('Phạm Duy Khánh','HE150021','images_man.jpg')
insert into Student values ('Trần Phương Nam','HE150022','images_man.jpg')
insert into Student values ('Trần Đình Hạo','HE150023','images_man.jpg')
insert into Student values ('Nguyễn Văn Phùng','HE150024','images_man.jpg')
insert into Student values ('Nguyễn Đình Dũng','HE150025','images_man.jpg')
insert into Student values ('Nguyễn Trương Minh Hiếu','HE150026','images_man.jpg')
insert into Student values ('Lê Thị Ngọc Bình','HE150027','images_woman .jpg')
insert into Student values ('Đỗ Thị Thanh Huyền','HE150028','images_woman .jpg')
insert into Student values ('Đỗ Duy Mạnh','HE150029','images_man.jpg')
insert into Student values ('Đỗ Duy Khải','HE150030','images_man.jpg')
insert into Student values ('Nguyễn Thế Quân','HE150031','images_man.jpg')
insert into Student values ('Nguyễn Thân Nhật Huy','HE150032','images_man.jpg')
insert into Student values ('Lê Thị Hồng Nhung','HE150033','images_woman .jpg')
insert into Student values ('Nguyễn Thành Dũng','HE150034','images_man.jpg')
insert into Student values ('Lê Thị Minh','HE150035','images_woman .jpg')
insert into Student values ('Nguyễn Minh Nhật','HE150036','images_woman .jpg')
insert into Student values ('Nguyễn Thị Hạnh','HE150037','images_woman .jpg')
insert into Student values ('Vũ Thị Nga','HE150038','images_woman .jpg')
insert into Student values ('Lưu Đình Vũ','HE150039','images_man.jpg')
insert into Student values ('Lê Đăng Minh Đạt','HE150040','images_man.jpg')
insert into Student values ('Hồ Ngọc Hà','HE150041','images_woman .jpg')
	--insert table Room
insert into Room values ('DE-C205'),('DE-C211'),('DE-C302'),('BE-210'),('BE-306'),('AL-L401')
	--insert table Timeslot
insert into Timeslot values ('7:30-9:00'),('9:10-10:40'),('10:50-12:20'),('12:50-14:20'),('14:30-16:00'),('16:10-17:40'),('18:00-19:30')
	--insert table Lession
insert into Lession values (1,1,1,1)
insert into Lession values (2,2,2,1)
insert into Lession values (3,3,3,1)
insert into Lession values (4,2,3,2)
insert into Lession values (5,3,4,2)
insert into Lession values (6,4,5,2)
insert into Lession values (7,3,5,3)
insert into Lession values (8,4,6,3)
insert into Lession values (9,1,7,3)
insert into Lession values (10,1,2,4)
insert into Lession values (11,3,3,4)
insert into Lession values (12,4,4,4)
insert into Lession values (13,5,3,2)
insert into Lession values (14,6,4,2)
insert into Lession values (15,7,5,2)
insert into Lession values (16,2,1,2)
insert into Lession values (17,1,4,3)
insert into Lession values (18,4,7,5)
insert into Lession values (19,7,2,6)
insert into Lession values (20,5,3,6)
insert into Lession values (21,6,7,6)
insert into Lession values (22,2,4,1)
insert into Lession values (23,4,5,1)
insert into Lession values (24,6,6,1)
insert into Lession values (25,5,5,5)
insert into Lession values (26,2,6,5)
insert into Lession values (27,4,7,5)
insert into Lession values (28,3,1,2)
insert into Lession values (29,5,2,2)
insert into Lession values (30,6,3,2)
insert into Lession values (31,4,2,3)
insert into Lession values (32,2,3,3)
insert into Lession values (33,1,4,3)
insert into Lession values (34,5,3,4)
insert into Lession values (35,6,4,4)
insert into Lession values (36,7,5,4)
insert into Lession values (37,6,4,6)
insert into Lession values (38,5,5,6)
insert into Lession values (39,1,6,6)
insert into Lession values (40,7,1,3)
insert into Lession values (41,4,2,3)
insert into Lession values (42,6,3,3)
insert into Lession values (43,2,3,5)
insert into Lession values (44,3,4,5)
insert into Lession values (45,4,5,5)
insert into Lession values (46,1,2,2)
insert into Lession values (47,3,6,2)
insert into Lession values (48,4,7,2)
insert into Lession values (49,2,4,1)
insert into Lession values (50,6,6,1)
insert into Lession values (51,5,7,1)
insert into Lession values (52,2,1,6)
insert into Lession values (53,1,2,6)
insert into Lession values (54,6,3,6)
insert into Lession values (55,7,3,5)
insert into Lession values (56,4,4,5)
insert into Lession values (57,4,5,5)
insert into Lession values (58,3,1,1)
insert into Lession values (59,4,3,1)
insert into Lession values (60,7,4,1)
	--insert table account
insert into Account values('thanhlkhe150490', '12345678', 1, 'thanhlkhe150490@fpt.edu.vn');
insert into Account values('hinhnbhe150001', '12345678', 1, 'hinhnbhe150001@fpt.edu.vn');
insert into Account values('diennxhe150002', '12345678', 1, 'diennxhe150002@fpt.edu.vn');
insert into Account values('donghphe150003', '12345678', 1, 'donghphe150003@fpt.edu.vn');
insert into Account values('trangdthe150004', '12345678', 1, 'trangdthe150004@fpt.edu.vn');

insert into Account values('sonnt', '12345678', 1, 'sonnt09@fe.edu.vn');
insert into Account values('khuongpd', '12345678', 1, 'khuongpd05@fe.edu.vn');
insert into Account values('tuanvm01', '12345678', 1, 'tuanvm01@fe.edu.vn');


