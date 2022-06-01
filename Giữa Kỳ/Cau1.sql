create database MPRODB
go

use MPRODB
go

create table SINHVIEN
(
    Masv char(8),
    Ho nvarchar(20) not null,
    Tendem nvarchar(30),
    Ten nvarchar(20) not null,
    Email varchar(50) not null,
    Sdt varchar(10) not null,
    CONSTRAINT PK_MASV primary key (Masv)
)
go

create table DETAI
(
    Madetai char(5),
    Tendetai nvarchar(100) not null,
    Kinhphi int not null,
    Ngayduyet Date not null,
    Thoihan int not null,
    Trangthai nvarchar(20) not null,
    Ngaynghiemthu Date,
    CONSTRAINT PK_MADETAI primary key (Madetai)
)
go

CREATE table SINHVIEN_DETAI
(
    Madetai char(5),
    Masv char(8),
    Chunhiem bit not null,
    constraint FK_DT_MADETAI foreign key (Madetai)
    0references DETAI(Madetai),
    constraint FK_SV_MASV foreign key (Masv) references SINHVIEN(Masv),
    CONSTRAINT PK_MADETAI_MASV primary key (Madetai, Masv)
)
GO