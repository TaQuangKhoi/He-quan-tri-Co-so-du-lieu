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
select K.MASV, S.TEN, K.DIEM, H.MAHP, M.MAMH, M.TENMH
from KQUA K, HPHAN H, MHOC M, SVIEN S
where K.MASV = 8
AND K.MAHP = H.MAHP
AND H.MAMH = M.MAMH
AND K.MASV = S.MASV
go

--d)
select S.TEN, K.DIEM, H.MAMH
from KQUA K, HPHAN H, SVIEN S
where K.MAHP = H.MAHP
AND K.MASV = S.MASV
AND K.DIEM > 7
go

--e)
SELECT S.TEN
FROM SVIEN S, KHOA K, MHOC M
WHERE TENMH = 'Toán r?i r?c'
AND M.MAKHOA = K.MAKHOA
AND K.MAKHOA = S.MAKHOA

