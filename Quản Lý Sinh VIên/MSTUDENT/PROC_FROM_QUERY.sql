use MSTUDENT
GO
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

GO
-- i )
create proc Lay_Diem_Trung_Binh (
    @tensv nvarchar(30),
    @hocky int,
    @nam int
)
AS
SELECT SUM(K.DIEM * M.TINCHI) / SUM(M.TINCHI) 'Diem trung binh'
FROM SVIEN S, KQUA K, HPHAN H, MHOC M
WHERE S.MASV = K.MASV
	AND K.MAHP = H.MAHP
	AND H.MAMH = M.MAMH
    AND H.HOCKY = @hocky
    and H.NAM = @nam
GROUP BY S.MASV, S.TEN, H.NAM

EXEC Lay_Diem_Trung_Binh 'Trang', 1, 1996