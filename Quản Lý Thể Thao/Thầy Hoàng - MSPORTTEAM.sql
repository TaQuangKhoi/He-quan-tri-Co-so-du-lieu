create table CLB (
maclb int,
dcclb nvarchar(30),
constraint PK_CLB primary key (maclb),
constraint CK_MACLB check (maclb > 0 and maclb < 101)
)

create table PHONG (
maphg int,
dcphg nvarchar(30),
tsosanphg int,
constraint PK_PHONG primary key (maphg),
constraint CK_SOSAN check (tsosanphg > 0 and tsosanphg < 6)
)

create table LUATUOI (
luatuoi char(3),
thoigiantd int not null,
constraint PK_LUATUOI primary key (luatuoi),
constraint CK_LUATUOI check (luatuoi in ('LT1', 'LT2', 'LT3', 'LT4', 'LT5')),
constraint CK_THOIGIAN check (thoigiantd > 0 and thoigiantd < 121)
)

create table DOI (
madoi int,
luatuoi char(3) not null,
phai char(3) not null,
maclb int,
constraint PK_DOI primary key (madoi, maclb),
constraint CK_MADOI check (madoi > 0  and madoi < 51),
constraint CK_PHAI check (phai in ('Nam', 'Nu')),
constraint FK_DOI_CLB foreign key (maclb) references CLB(maclb),
constraint FK_DOI_LUATUOI foreign key (luatuoi) references LUATUOI(luatuoi)
)

create table TRANDAU (
matd int,
ngaytd date not null,
giotd time not null,
maphg int not null,
constraint PK_TRANDAU primary key (matd),
constraint FK_TRANDAU_PHONG foreign key (maphg) references PHONG(maphg)
)

create table DOI_TD (
matd int,
madoi int,
maclb int,
constraint PK_DOI_TD primary key (matd, madoi, maclb),
constraint FK_DOI_TD_MATD foreign key (matd) references TRANDAU(matd),
constraint FK_DOI_TD_MADOI1 foreign key (madoi, maclb) references DOI(madoi, maclb)
)

create table VANDONGVIEN (
mavdv int,
tenvdv nvarchar(50) not null,
diachivdv nvarchar(30),
phai char(3) not null,
luatuoi char(3) not null,
maclb int not null,
constraint PK_VDV primary key (mavdv),
constraint CK_VDV_PHAI check (phai in ('Nam', 'Nu')),
constraint FK_VDV_LUATUOI foreign key (luatuoi) references LUATUOI(luatuoi),
constraint FK_VDV_CLB foreign key (maclb) references CLB(maclb)
)

create table VDV_DOI (
mavdv int,
madoi int
constraint PK_VDV_DOI primary key (mavdv, madoi),
constraint FK_VDV_DOI_MAVDV foreign key (mavdv) references VANDONGVIEN(mavdv)
)

insert into CLB (maclb, dcclb)
values
(1, 'Hoa Lu - Dinh Tien Hoang'),
(3, 'Huong Duong - Le Thanh Ton'),
(27, 'Tao Dan - Nguyen Du'),
(45, 'Hai Quan - Bach Dang'),
(50, 'Cong An - Nguyen Trai')

insert into PHONG (maphg, dcphg, tsosanphg)
values
(3, 'tttt', 4),
(5, 'vvvv', 3),
(17, 'xxxx', 2),
(20, 'yyyy', 1),
(49, 'uuuu', 4)

insert into LUATUOI (luatuoi, thoigiantd)
values
('LT1', 45),
('LT2', 60),
('LT3', 60),
('LT4', 120),
('LT5', 90)

insert into DOI (maclb, madoi, luatuoi, phai)
values
(1, 1, 'LT1', 'Nam'),
(1, 2, 'LT5', 'Nu'),
(3, 1, 'LT1', 'Nam'),
(3, 2, 'LT1', 'Nu'),
(27, 1, 'LT1', 'Nu'),
(27, 3, 'LT5', 'Nu'),
(45, 1, 'LT3', 'Nam'),
(45, 2, 'LT4', 'Nam'),
(50, 1, 'LT4', 'Nam'),
(50, 2, 'LT3', 'Nam')

insert into TRANDAU (matd, maphg, giotd, ngaytd)
values