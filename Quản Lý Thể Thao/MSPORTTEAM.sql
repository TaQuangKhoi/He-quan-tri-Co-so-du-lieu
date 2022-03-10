CREATE DATABASE MSPORTTEAM
GO

USE MSPORTTEAM
GO

CREATE TABLE CLB
(
	CLB_MA TINYINT, -- Allows whole numbers from 0 to 255
	CLB_DC NVARCHAR(30) not null,
	CONSTRAINT PK_CLB_MA PRIMARY KEY(CLB_MA),
	CONSTRAINT CK_CLB_MA CHECK (CLB_MA >= 1 AND CLB_MA <= 100)
)
GO

CREATE TABLE LUA_TUOI
(
	LT NVARCHAR(3),
	LT_TGTD TINYINT,
	CONSTRAINT PK_LT PRIMARY KEY(LT),
	CONSTRAINT CK_LT_TGTD CHECK (LT_TGTD >= 0 AND LT_TGTD <= 120)
)
GO

CREATE TABLE DOI
(
	CLB_MA TINYINT,
	DOI_MA TINYINT,
	LT NVARCHAR(3),
	PHAI NVARCHAR(3),
	CONSTRAINT PK_DOI_MA PRIMARY KEY(DOI_MA, CLB_MA),
	CONSTRAINT CK_DOI_MA CHECK (DOI_MA >= 1 AND DOI_MA <= 50),
	CONSTRAINT FK_DOI_CLB FOREIGN KEY(CLB_MA) REFERENCES CLB(CLB_MA),
	CONSTRAINT FK_DOI_LT FOREIGN KEY(LT) REFERENCES LUA_TUOI(LT)
)
GO

CREATE TABLE PHONG
(
	PHG_MA TINYINT,
	PHG_DC NVARCHAR(30),
	PHG_TSS TINYINT,
	CONSTRAINT PK_PHG_MA PRIMARY KEY(PHG_MA),
	CONSTRAINT CK_PHG_TSS CHECK (PHG_TSS >= 1 AND PHG_TSS <= 5),
)
GO

CREATE TABLE TD
(
	TD_MA TINYINT,
	PHG_MA TINYINT,
	TD_GIO TIME,
	TD_NGAY DATE,
	CONSTRAINT PK_TD_MA PRIMARY KEY(TD_MA),
	CONSTRAINT FK_TD_PHONG FOREIGN KEY(PHG_MA) REFERENCES PHONG(PHG_MA)
)
GO

CREATE TABLE DOI_TD
(
	TD_MA TINYINT,
	DOI_MA TINYINT,
	CLB_MA TINYINT,
	CONSTRAINT FK_DOI_TD_DOI PRIMARY KEY(TD_MA,DOI_MA,CLB_MA),
	CONSTRAINT FK_DOI_TD_CLB FOREIGN KEY(CLB_MA) REFERENCES CLB(CLB_MA)
)
GO

CREATE TABLE VDV
(
	VDV_MA TINYINT,
	VDV_TEN NVARCHAR(15),
	VDV_DC NVARCHAR(30),
	CLB_MA TINYINT,
	PHAI NVARCHAR(3),
	LT NVARCHAR(3),
	CONSTRAINT PK_VDV_MA PRIMARY KEY(VDV_MA),
	CONSTRAINT FK_VDV_CLB FOREIGN KEY(CLB_MA) REFERENCES CLB(CLB_MA),
	CONSTRAINT FK_VDV_LUA_TUOI FOREIGN KEY(LT) REFERENCES LUA_TUOI(LT)
)
GO

CREATE TABLE VDV_DOI
(
	VDV_MA TINYINT,
	DOI_MA TINYINT,
	CONSTRAINT PK_VDV_DOI PRIMARY KEY(VDV_MA,DOI_MA)
)
GO

INSERT INTO CLB
VALUES
	(1, N'Hoa Lư - Đinh Tiên Hoàng'),
	(27, N'Tao Đàn - Nguyễn Du'),
	(3, N'Hướng Dương - Lê Thánh Tôn'),
	(45, N'Hải Quan - Bạch Đằng'),
	(50, N'Công An - Nguyễn Trãi')

GO

INSERT INTO LUA_TUOI
VALUES
	('LT1', 45),
	('LT2', 60),
	('LT3', 60),
	('LT4', 120),
	('LT5', 90)
GO

INSERT INTO DOI
VALUES
	(1, 1, 'LT1', 'Nam'),
	(1, 2, 'LT5', N'Nữ'),
	(3, 1, 'LT1', 'Nam'),
	(3, 2, 'LT1', N'Nữ'),
	(27, 1, 'LT1', N'Nữ'),
	(27, 3, 'LT5', N'Nữ'),
	(45, 1, 'LT3', 'Nam'),
	(45, 2, 'LT4', 'Nam'),
	(50, 1, 'LT4', 'Nam'),
	(50, 2, 'LT3', 'Nam')

GO

INSERT INTO PHONG
VALUES
	(17, 'xxxx', 2),
	(20, 'yyyy', 1),
	(3, 'tttt', 4),
	(49, 'uuuu', 4),
	(5, 'vvvv', 3)

GO

INSERT INTO TD VALUES
(2,17,'10:15:00','12-6-90'),
(9,20,'15:00:00','1-9-90'),
(12,17,'09:30:00','12-6-90'),
(13,17,'14:30:00','12-6-90'),
(17,5,'14:00:00','1-1-90'),
(18,49,'13:30:00','8-5-90'),
(23,49,'08:00:00','6-16-90'),
(25,3,'14:00:00','6-16-90'),
(26,49,'15:30:00','8-5-90'),
(30,49,'12:45:00','8-5-90')

GO

INSERT INTO DOI_TD
VALUES
	(2, 2, 1),
	(2, 3, 27),
	(9, 1, 50),
	(9, 2, 45),
	(12, 1, 45),
	(12, 2, 50),
	(13, 1, 45),
	(13, 2, 50),
	(17, 1, 27),
	(17, 2, 3),
	(18, 1, 50),
	(18, 2, 45),
	(25, 1, 1),
	(25, 1, 3),
	(26, 2, 1),
	(26, 3, 27),
	(30, 1, 3),
	(30, 1, 1)

GO

INSERT INTO VDV
VALUES
	(1, N'Long', N'131 Đinh Tiên Hoàng', 50, N'Nam', 'LT4'),
	(5, N'Hoàng', N'350 Nguyễn Đình Chiễu', 3, N'Nữ', 'LT1'),
	(6, N'Hoa', N'17 Phạm Thế Hiển', 1, N'Nữ', 'LT5'),
	(10, N'Quân', N'12 Phan Kế Bình', 50, N'Nam', 'LT3'),
	(12, N'Hằng', N'21 Trần Quốc Thảo', 27, N'Nữ', 'LT4'),
	(15, N'Trinh', N'89 Võ Thị Sáu', 1, N'Nam', 'LT4'),
	(17, N'Dũng', N'50 Nguyễn Văn Thủ', 45, N'Nữ', 'LT4'),
	(22, N'Phương', N'270 Nguyễn Trải', 27, N'Nữ', 'LT4'),
	(26, N'Ngọc', N'17 Tú Xương', 27, N'Nữ', 'LT4'),
	(28, N'Hà', N'77 Cao Thắng', 3, N'Nam', 'LT4'),
	(31, N'Thủy', N'39 Lê Duẫn', 3, N'Nam', 'LT4'),
	(36, N'Lan', N'520 Xô Viết Nghệ Tĩnh', 1, N'Nam', 'LT4'),
	(38, N'Hồng', N'100 Đồng Khởi', 27, N'Nam', 'LT4'),
	(50, 'Huy', N'27 Đồng Khởi', 45, 'Nam', 'LT4'),
	(52, N'Trí', N'55 Trần Quý Cáp', 50, 'Nam', 'LT3'),
	(65, N'Vũ', N'220 Nguyễn Trọng Tuyền', 50, 'Nam', 'LT4'),
	(67, N'Tâm', N'304 Điện Biên Phủ', 45, 'Nam', 'LT3'),
	(72, N'Tiên', N'12 Cách Mạng Tháng Tám', 50, 'Nam', 'LT3'),
	(75, 'Nam', N'79 Trần Hưng Đạo', 45, 'Nam', 'LT3'),
	(76, N'Tuân', N'51 Lạc Long Quân', 45, 'Nam', 'LT3'),
	(80, N'Tuyên', N'80 Nguyễn Bỉnh Khiêm', 1, 'Nam', 'LT1'),
	(85, N'Sơn', N'02 Mạc Đỉnh Chi', 3, 'Nam', 'LT1'),
	(87, N'Phụng', N'125 Trần Hưng Đạo', 1, 'Nam', 'LT1'),
	(91, N'Hạnh', N'411 Trần Quý Cáp', 27, N'Nữ', 'LT1'),
	(92, N'Đức', N'411 Võ Thị Sáu', 1, 'Nam', 'LT1'),
	(94, N'Loan', N'1 Lý Tự Trọng', 27, 'Nam', 'LT5'),
	(96, N'Giao', N'98 Phạm Thế Hiển', 50, 'Nam', 'LT2'),
	(100, N'Nga', N'500 Trần Bình Trọng', 3, N'Nữ', 'LT1'),
	(120, N'Hải', N'13 Cao Thắng', 3, 'Nam', 'LT1'),
	(122, N'Hùng', N'123 Phùng Khắc Hoan', 45, 'Nam', 'LT4')

GO


INSERT INTO VDV_DOI
VALUES
	(1, 1),
	(5, 2),
	(6, 2),
	(12, 1),
	(12, 3),
	(15, 2),
	(17, 1),
	(22, 1),
	(22, 3),
	(28, 1),
	(31, 2),
	(36, 2),
	(38, 1),
	(50, 2),
	(52, 2),
	(65, 1),
	(67, 2),
	(72, 2),
	(75, 1),
	(76, 1),
	(80, 1),
	(85, 1),
	(87, 1),
	(91, 1),
	(92, 1),
	(94, 3),
	(96, 2),
	(100, 2),
	(120, 1),
	(122, 2)

