create proc procGetStudents (@makhoa char(4))
as
select * from khoa where makhoa = @makhoa

go

create proc procKetQuaHocTapTheoMSSV (@masv int)
as
select K.MASV, S.TEN, K.DIEM, H.MAHP, M.MAMH, M.TENMH
from KQUA K, HPHAN H, MHOC M, SVIEN S
where K.MASV = @masv
AND K.MAHP = H.MAHP
AND H.MAMH = M.MAMH
AND K.MASV = S.MASV