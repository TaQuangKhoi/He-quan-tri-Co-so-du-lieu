--1.
select Madetai, Tendetai
from DETAI
where Trangthai = N'Quá hạn'
--2.
select sv.Masv, Ho, Ten, dt.Madetai, Tendetai
from SINHVIEN sv, DETAI dt, SINHVIEN_DETAI sd
where sv.Masv = sd.Masv and dt.Madetai = sd.Madetai
and sd.Chunhiem = 1
and dt.Trangthai = N'Đã nghiệm thu'
--3.
select sv.Masv, Ten, count(sd.Madetai) as 'Lượng đề tài'
from SINHVIEN sv, DETAI dt, SINHVIEN_DETAI sd
where sv.Masv = sd.Masv
and dt.Trangthai = N'Đang thực hiện'
GROUP by sv.Masv, Ten
--4.
select sv.Masv, Ho, Ten, Ngayduyet, Trangthai
from SINHVIEN sv, DETAI dt, SINHVIEN_DETAI sd
where sv.Masv = sd.Masv and dt.Madetai = sd.Madetai
and Year(Ngayduyet) = '2019'
and Trangthai = N'Đang thực hiện'
--5.
select dt.Tendetai, count(sd.Masv) as 'Lượng sinh viên'
from DETAI dt, SINHVIEN_DETAI sd
where dt.Madetai = sd.Madetai
group by dt.Tendetai
--6.
select dt.Tendetai, count(sd.Masv) as 'Lượng sinh viên'
from DETAI dt, SINHVIEN_DETAI sd
where dt.Madetai = sd.Madetai
group by dt.Tendetai
having count(sd.Masv) = 1
