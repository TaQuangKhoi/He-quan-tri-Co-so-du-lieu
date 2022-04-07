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
from KQUA K, HPHAN H, MHOC M, SVIEN S
where K.MASV = 8
AND K.MAHP = H.MAHP
AND H.MAMH = M.MAMH
AND K.MASV = S.MASV
go

--d)
select sv.Ten, kq.MaHP
from KQua kq, SVien sv
where sv.MaSV = kq.MaSV
and kq.Diem > 7
go

--e)
