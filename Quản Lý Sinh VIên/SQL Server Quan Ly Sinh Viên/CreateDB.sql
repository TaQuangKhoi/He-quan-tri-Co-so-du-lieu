create database MSTUDENT	
GO

use MSTUDENT
GO

create table KHOA
(
MAKHOA char(4),
TENKHOA nvarchar(30),
NAMTHANHLAP int,
constraint PK_Khoa primary key(MAKHOA),
constraint UN_TENKHOA unique (TENKHOA)
)
GO

create table SVIEN
(
MASV int,
TEN nvarchar(30),
NAM int,
MAKHOA char(4),
constraint PK_SVien primary key(MASV),
constraint CK_SVien check(NAM in (1, 2, 3, 4)), -- constraint CK_NAM check (nam > 0 AND nam < 5),
constraint FK_SVien_Khoa foreign key (MAKHOA) references Khoa(MAKHOA)
)
GO

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
GO

create table DKIEN
(
MAMH_TRUOC char(8),
MAMH char(8),
constraint PK_DKien foreign key(MAMH_TRUOC) references MHOC(MAMH),
constraint FK_DKien_MonHoc foreign key(MaMH) references MHOC(MAMH)
)
GO

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
GO

create table KQUA
(
MASV int,
MAHP int,
DIEM float,
constraint PK_KQua primary key(MASV,MAHP),
constraint FK_KQua_SVien foreign key(MASV) references SVIEN(MASV),
constraint FK_KQua_HPhan foreign key(MAHP) references HPHAN(MAHP),
constraint CK_KQua check(Diem > 0 AND Diem < 11)
)
GO

INSERT KHOA
VALUES
('CNTT', N'Cong nghe thong tin', 1995),
('VL', N'Vat Ly', 1976),
('TOAN', N'Toan', 1976)
GO

INSERT SVIEN
VALUES
(17, N'Son', 1,'CNTT'),
(8, N'Bao', 2, 'CNTT'),
(5,N'Trang', 3, 'TOAN')
GO

INSERT MHOC
VALUES
('COSC1310', N'Nhap mon cong nghe thong tin', 4, 'CNTT' ),
('COSC3320', N'Cau truc du lieu', 4, 'CNTT'),
('MATH2410', N'Toan roi rac', 3, 'TOAN'),
('COSC3380', N'Co so du lieu', 3, 'CNTT'),
('PHYS3332', N'Vat ly dai cuong', 3, 'VL')
GO

INSERT into DKIEN (MAMH, MAMH_TRUOC)
VALUES
('COSC3380', 'COSC3320'),
('COSC3380', 'MATH2410'),
('COSC3320', 'COSC1310')
GO

-- Insert data for 9g
INSERT into DKIEN (MAMH, MAMH_TRUOC)
VALUES
('COSC3320', 'COSC3380')
GO

INSERT HPHAN
VALUES
( 85, 'MATH2410', 1, 1996, N'Kim'),
( 92, 'COSC1310', 1, 1996, N'An'),
(102, 'COSC3320', 2, 1997, N'Nhien'),
(112, 'MATH2410', 1, 1997, N'Van'),
(119, 'COSC1310', 1, 1997, N'An'),
(135, 'COSC3380', 1, 1997, N'Son')
GO

INSERT KQUA
VALUES
(17, 102, 8),
(17, 119, 6),
(5, 85, 10),
(8, 92, 10),
(8, 102, 8),
(8, 135, 10)
GO

--5
INSERT SVIEN
VALUES
(25, N'Nam',2,'CNTT')
GO

--6
INSERT KQUA
VALUES
(25, 102, 7),
(25, 135, 9)
GO

--7
UPDATE KQUA
SET Diem = 9
WHERE MAHP = 102
AND MASV = 8
GO

SELECT DIEM, MAHP, MASV
FROM KQUA
WHERE MASV = 8
AND MAHP = 102

--8
DELETE FROM KQUA
WHERE MASV = 8
AND MAHP = 135
AND DIEM = 10
GO

SELECT *
FROM KQUA
WHERE MASV = 8
AND MAHP = 135
AND DIEM = 10