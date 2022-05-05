use MSTUDENT

--d) Tim hoc sinh theo ket qua cuoi khoa nhap vao
create proc SV_by_KetQua(
    @diem float
)
as
select S.TEN, K.DIEM, H.MAMH
from KQUA K, HPHAN H, SVIEN S
where K.MAHP = H.MAHP
AND K.MASV = S.MASV
AND K.DIEM > @diem

exec SV_by_KetQua 7