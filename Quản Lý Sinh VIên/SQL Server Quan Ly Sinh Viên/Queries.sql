--9 Create queries

--a)
select TEN
from SVIEN
where MAKHOA = 'CNTT'
go

--b)
select TENMH, TINCHI
from MHOC
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
