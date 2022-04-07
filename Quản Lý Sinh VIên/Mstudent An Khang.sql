create database MSTUDENT	
go

use MSTUDENT
go

create table Khoa
(
MaKhoa char(4),
TenKhoa nvarchar(30),
NamThanhLap int,
constraint PK_Khoa primary key(MaKhoa)
)
go

create table SVien
(
MaSV int,
Ten nvarchar(30),
Nam int,
MaKhoa char(4),
constraint PK_SVien primary key(MaSV),
constraint CK_SVien check(Nam in (1, 2, 3, 4)),
constraint FK_SVien_Khoa foreign key (MaKhoa) references Khoa(MaKhoa)
)
go

create table MonHoc
(
MaMH char(8),
TenMH nvarchar(30),
TinChi int,
MaKhoa char(4),
constraint PK_MonHoc primary key(MaMH),
constraint FK_MonHoc_Khoa foreign key(MaKhoa) references Khoa(MaKhoa)
)
go

create table DKien
(
MaMH_Truoc char(8),
MaMH char(8),
constraint PK_DKien primary key(MaMH_Truoc,MaMH),
constraint FK_DKien_MonHoc foreign key(MaMH) references MonHoc(MaMH)
)
go

create table HPhan
(
MaHP int,
TenMaHP nvarchar(40),
HocKy int,
Nam int,
GV nvarchar(30),
constraint PK_HPhan primary key(MaHP),
)
go

create table KQua
(
MaSV int,
MaHP int,
Diem float,
constraint PK_KQua primary key(MaSV,MaHP),
constraint FK_KQua_SVien foreign key(MaSV) references SVien(MaSV),
constraint FK_KQua_HPhan foreign key(MaHP) references HPhan(MaHP),
constraint CK_KQua check(Diem > 0 and Diem < 11)
)
go

insert Khoa
values
('CNTT', N'Công nghê thông tin', 1995),
('VL', N'Vật Lý', 1976),
('TOAN', N'Toán', 1976)
go

insert SVien
values
(17, N'Sơn', 1,'CNTT'),
(8, N'Bảo', 2, 'CNTT'),
(5,N'Trang', 3, 'TOAN')
go

insert MonHoc
values
('COSC1310', N'Nhập môn công nghê thông tin', 4, 'CNTT' ),
('COSC3320', N'Cấu trúc dữ liệu', 4, 'CNTT'),
('MATH2410', N'Toán rời rạc', 3, 'TOAN'),
('COSC3380', N'Cơ sở dữ liệu', 3, 'CNTT'),
('PHYS3332', N'Vật lý đại cương', 3, 'VL')
go

insert DKien
values
('COSC3380','COSC3320'),
('COSC3380', 'MATH2410'),
('COSC3320', 'COSC1310')
go

insert HPhan
values
(85, 'MATH2410', 1, 1996, N'Kim'),
(92, 'COSC1310', 1, 1996, N'An'),
(102, 'COSC3320', 2, 1997, N'Nhiên'),
(112, 'MATH2410', 1, 1997, N'Vân'),
(119, 'COSC1310', 1, 1997, N'An'),
(135, 'COSC3380', 1, 1997, N'Sơn')
go

insert KQua
values
(17, 102, 8),
(17, 119, 6),
(5, 85, 10),
(8, 92, 10),
(8, 102, 8),
(8, 135, 10)
go

--5
insert Svien
values
(25, N'Nam',2,'CNTT')
go

--6
insert KQua
values
(25, 102, 7),
(25, 135, 9)
go

--7
update KQua
set Diem = 9
where MaHP = 102
and MaSV = 8
go

--8
delete from KQua
where MaSV = 8
and MaHP = 135
and Diem = 10
go

--9
--a)
select Ten
from SVien
where MaKhoa = 'CNTT'
go

--b)
select TenMH, TinChi
from MonHoc
go

--c)
select *
from KQua
where MaSV = 8
go

--d)
select sv.Ten, kq.MaHP
from KQua kq, SVien sv
where sv.MaSV = kq.MaSV
and kq.Diem > 7
go

--e)
