USE MSTUDENT
GO
-- c.
create function KetQua_theo_SV_Test(@masv int, @mahp int)
RETURNS float AS
BEGIN
    DECLARE @diem float
    set @diem = (select K.DIEM
    from KQUA K, HPHAN H, MHOC M, SVIEN S
    where K.MASV = @masv
        and K.MAHP = @mahp
        AND K.MAHP = H.MAHP
        AND H.MAMH = M.MAMH
        AND K.MASV = S.MASV)
    return (@diem)
END
GO

SELECT KetQua_theo_SV_Test (S.MASV, H.MAHP)
FROM SVIEN S, HPHAN H
WHERE 