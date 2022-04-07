create database MSTUDENT	
go

use MSTUDENT
go

create table KHOA
(
MAKHOA char(4),
TENKHOA nvarchar(30),
NAMTHANHLAP int,
constraint PK_Khoa primary key(MAKHOA),
constraint UN_TENKHOA unique (TENKHOA)
)
go

create table SVIEN
(
MASV int,
TEN nvarchar(30),
NAM int,
MAKHOA char(4),
constraint PK_SVien primary key(MASV),
constraint CK_SVien check(NAM in (1, 2, 3, 4)), -- constraint CK_NAM check (nam > 0 and nam < 5),
constraint FK_SVien_Khoa foreign key (MAKHOA) references Khoa(MAKHOA)
)
go

create table MHOC
(
MAMH char(8),
TENMH nvarchar(30),
TINCHI int,
MAKHOA char(4),
constraint PK_MonHoc primary key(MAMH),
constraint UN_TENMH unique (TENMH),
constraint FK_MonHoc_Khoa foreign key(MAKHOA) references Khoa(MAKHOA)
)
go

create table DKIEN
(
MAMH_TRUOC char(8),
MAMH char(8),
constraint PK_DKien foreign key(MAMH_TRUOC) references MHOC(MAMH),
constraint FK_DKien_MonHoc foreign key(MaMH) references MHOC(MAMH)
)
go

create table HPHAN
(
MAHP int,
MAMH char(8),
HOCKY int,
NAM int,
GV nvarchar(30),
constraint PK_HPhan primary key(MAHP),
constraint FK_HOCPHAN_MONHOC foreign key (MAMH) references MHOC(MAMH)
)
go

create table KQUA
(
MASV int,
MAHP int,
DIEM float,
constraint PK_KQua primary key(MASV,MAHP),
constraint FK_KQua_SVien foreign key(MASV) references SVIEN(MASV),
constraint FK_KQua_HPhan foreign key(MAHP) references HPHAN(MAHP),
constraint CK_KQua check(Diem > 0 and Diem < 11)
)
go

insert KHOA
values
('CNTT', N'Công nghê thông tin', 1995),
('VL', N'V?t Lı', 1976),
('TOAN', N'Toán', 1976)
go

insert SVIEN
values
(17, N'S?n', 1,'CNTT'),
(8, N'B?o', 2, 'CNTT'),
(5,N'Trang', 3, 'TOAN')
go

insert MHOC
values
('COSC1310', N'Nh?p môn công nghê thông tin', 4, 'CNTT' ),
('COSC3320', N'C?u trúc d? li?u', 4, 'CNTT'),
('MATH2410', N'Toán r?i r?c', 3, 'TOAN'),
('COSC3380', N'C? s? d? li?u', 3, 'CNTT'),
('PHYS3332', N'V?t lı ??i c??ng', 3, 'VL')
go

insert DKIEN
values
('COSC3380','COSC3320'),
('COSC3380', 'MATH2410'),
('COSC3320', 'COSC1310')
go

insert HPHAN
values
(85, 'MATH2410', 1, 1996, N'Kim'),
(92, 'COSC1310', 1, 1996, N'An'),
(102, 'COSC3320', 2, 1997, N'Nhiên'),
(112, 'MATH2410', 1, 1997, N'Vân'),
(119, 'COSC1310', 1, 1997, N'An'),
(135, 'COSC3380', 1, 1997, N'S?n')
go

insert KQUA
values
(17, 102, 8),
(17, 119, 6),
(5, 85, 10),
(8, 92, 10),
(8, 102, 8),
(8, 135, 10)
go

--5
insert SVIEN
values
(25, N'Nam',2,'CNTT')
go

--6
insert KQUA
values
(25, 102, 7),
(25, 135, 9)
go

--7
update KQUA
set Diem = 9
where MAHP = 102
and MASV = 8
go

SELECT DIEM, MAHP, MASV
FROM KQUA
WHERE MASV = 8

--8
delete from KQUA
where MASV = 8
and MAHP = 135
and DIEM = 10
go