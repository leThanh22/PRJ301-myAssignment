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

create table [Group](
	gid int identity(1,1) primary key,
	groupName varchar(50) not null,
	cid int ,
	CONSTRAINT fk_cid FOREIGN KEY (cid) REFERENCES Course(cid),
)
create table Student(
	studentid int identity(1,1) primary key,
	sname varchar(150) not null,
	code varchar(20) not null,
	groupId int,
	images varchar(max) not null,
	CONSTRAINT fk_groupid FOREIGN KEY (groupId ) REFERENCES [Group](gid ),
)
create table Room(
	rid int identity(1,1) primary key,
	rname varchar(50) not null,
)
create table Timeslot(
	tid int identity(1,1) primary key,
	tname varchar(50) not null,
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
create table [Status](
	statusid int identity(1,1) primary key,
	stname varchar(20) not null,
	studentId int,
	lessionId int,
	recordtime date not null,
	CONSTRAINT fk_studentid FOREIGN KEY (studentId ) REFERENCES [Student](studentid ),
	CONSTRAINT fk_Lessionid FOREIGN KEY (Lessionid ) REFERENCES Lession(lid ),
)
create table Account(
	userId int IDENTITY(1,1) primary key,
	[name] varchar(max),
	[password] nvarchar(max),
	[role] int,
	email varchar(max),
)
drop table Account
	--insert table course
insert into Course values ('PRF192'),('PRJ301'),('DBI202'),('PRO192'),('SWP490'),('SWE201c'),('IOT102'),('LAB211'),('WEB201c'),('CSD201'),('NWC203c'),('CSD301')
	-- insert table instructor
insert into Instructor values ('Ngo Tung Son'), ('Phung Duy Khuong'), ('Tran Quy Ban'), ('Vuong Minh Tuan'),('Hoang Thanh Tung'),('Nguyen Duc Anh'),('Le Thi Tam')
	-- insert table group
	
insert into [Group] values ('SE1613',1)
insert into [Group] values ('SE1613',2)
insert into [Group] values ('SE1613',3)
insert into [Group] values ('AI1502',4)
insert into [Group] values ('AI1502',8)
insert into [Group] values ('AI1502',10)
insert into [Group] values ('IOT1602',7)
insert into [Group] values ('IOT1602',6)
insert into [Group] values ('IOT1602',11)
insert into [Group] values ('SE1636',6)
insert into [Group] values ('SE1636',5)
insert into [Group] values ('SE1636',4)
insert into [Group] values ('SE1615-NET',3)
insert into [Group] values ('SE1615-NET',8)
insert into [Group] values ('SE1615-NET',9)
insert into [Group] values ('SE1518',7)
insert into [Group] values ('SE1518',12)
insert into [Group] values ('SE1518',1)
insert into [Group] values ('SE1702',2)
insert into [Group] values ('SE1702',4)
insert into [Group] values ('SE1702',9)
insert into [Group] values ('IS1503',13)
insert into [Group] values ('IS1503',12)
insert into [Group] values ('IS1503',10)
insert into [Group] values ('AI1602',5)
insert into [Group] values ('AI1602',3)
insert into [Group] values ('AI1602',6)
insert into [Group] values ('SE1630',8)
insert into [Group] values ('SE1630',9)
insert into [Group] values ('SE1630',12)
insert into [Group] values ('KS1701',10)
insert into [Group] values ('KS1701',11)
insert into [Group] values ('KS1701',2)
insert into [Group] values ('SE1528',3)
insert into [Group] values ('SE1528',5)
insert into [Group] values ('SE1528',4)
insert into [Group] values ('AI1603',1)
insert into [Group] values ('AI1603',8)
insert into [Group] values ('AI1603',7)
insert into [Group] values ('SE1604',11)
insert into [Group] values ('SE1604',13)
insert into [Group] values ('SE1604',12)
insert into [Group] values ('IOT1702',2)
insert into [Group] values ('IOT1702',7)
insert into [Group] values ('IOT1702',5)
insert into [Group] values ('SE1546',4)
insert into [Group] values ('SE1546',6)
insert into [Group] values ('SE1546',8)
insert into [Group] values ('SE1723',10)
insert into [Group] values ('SE1723',11)
insert into [Group] values ('SE1723',12)
insert into [Group] values ('SE1714',1)
insert into [Group] values ('SE1714',2)
insert into [Group] values ('SE1714',5)
insert into [Group] values ('IS1603',6)
insert into [Group] values ('IS1603',4)
insert into [Group] values ('IS1603',7)
insert into [Group] values ('SE1725',12)
insert into [Group] values ('SE1725',13)
insert into [Group] values ('SE1725',11)

	--insert table Student
insert into Student values ('Lê Khả Thành','HE150490',1,'images_man.jpg')
insert into Student values ('Nguyễn Bá Hinh','HE150001',1,'images_man.jpg')
insert into Student values ('Vương Công Trung','HE150002',1,'images_man.jpg')
insert into Student values ('Nguyễn Xuân Điền','HE150003',2,'images_man.jpg')
insert into Student values ('Hồ Phương Đồng','HE150004',2,'images_man.jpg')
insert into Student values ('Ngô Trung Kiên','HE150005',2,'images_man.jpg')
insert into Student values ('Kiều Công Hoàng','HE150006',2,'images_man.jpg')
insert into Student values ('Nguyễn Hữu Hòa','HE150007',3,'images_man.jpg')
insert into Student values ('Nguyễn Bá Hùng','HE150008',3,'images_man.jpg')
insert into Student values ('Nguyễn Hữu Dũng','HE150009',3,'images_man.jpg')
insert into Student values ('Dương Thị Trang','HE150010',4,'images_woman .jpg')
insert into Student values ('Nguyễn Thị Thảo','HE150011',4,'images_woman .jpg')
insert into Student values ('Lê Hồng Ngọc','HE150012',4,'images_woman .jpg')
insert into Student values ('Nguyễn Thị Lụa','HE150013',5,'images_woman .jpg')
insert into Student values ('Nguyễn Thị Hiền','HE150014',5,'images_woman .jpg')
insert into Student values ('Nguyễn Thanh Thảo','HE150015',5,'images_woman .jpg')
insert into Student values ('Đỗ Công Duy','HE150016',6,'images_man.jpg')
insert into Student values ('Phan Khắc Hoàn','HE150017',6,'images_man.jpg')
insert into Student values ('Nguyễn Thị Như Ý','HE150018',6,'images_woman .jpg')
insert into Student values ('Nguyễn Thị Hương Lan','HE150019',7,'images_woman .jpg')
insert into Student values ('Nguyễn Nhật Nam','HE150020',7,'images_man.jpg')
insert into Student values ('Phạm Duy Khánh','HE150021',7,'images_man.jpg')
insert into Student values ('Trần Phương Nam','HE150022',8,'images_man.jpg')
insert into Student values ('Trần Đình Hạo','HE150023',8,'images_man.jpg')
insert into Student values ('Nguyễn Văn Phùng','HE150024',9,'images_man.jpg')
insert into Student values ('Nguyễn Đình Dũng','HE150025',9,'images_man.jpg')
insert into Student values ('Nguyễn Trương Minh Hiếu',9,'HE150026','images_man.jpg')
insert into Student values ('Lê Thị Ngọc Bình','HE150027',8,'images_woman .jpg')
insert into Student values ('Đỗ Thị Thanh Huyền','HE150028',10,'images_woman .jpg')
insert into Student values ('Đỗ Duy Mạnh','HE150029',10,'images_man.jpg')
insert into Student values ('Đỗ Duy Khải','HE150030',10,'images_man.jpg')
insert into Student values ('Nguyễn Thế Quân','HE150031',10,'images_man.jpg')
insert into Student values ('Nguyễn Thân Nhật Huy','HE150032',10,'images_man.jpg')
insert into Student values ('Lê Thị Hồng Nhung','HE150033',10,'images_woman .jpg')
insert into Student values ('Nguyễn Thành Dũng','HE150034',11,'images_man.jpg')
insert into Student values ('Lê Thị Minh','HE150035',11,'images_woman .jpg')
insert into Student values ('Nguyễn Minh Nhật','HE150036',12,'images_woman .jpg')
insert into Student values ('Nguyễn Thị Hạnh','HE150037',12,'images_woman .jpg')
insert into Student values ('Vũ Thị Nga','HE150038',12,'images_woman .jpg')
insert into Student values ('Lưu Đình Vũ','HE150039',13,'images_man.jpg')
insert into Student values ('Lê Đăng Minh Đạt','HE150040',14,'images_man.jpg')
insert into Student values ('Hồ Ngọc Hà','HE150041',14,'images_woman .jpg')
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
insert into Account values('sonnt', '12345678', 0, 'sonnt09@fe.edu.vn');
insert into Account values('khuongpd', '12345678', 0, 'khuongpd05@fe.edu.vn');
insert into Account values('tuanvm01', '12345678', 0, 'tuanvm01@fe.edu.vn');


select * from Account
