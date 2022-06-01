insert into SINHVIEN values
('17032381', N'Lê', N'Quang', N'An', 'Lquan@bvu.edu.vn', '0123456789'),
('17030041', N'Nguyễn', N'Hoàng Thiên', N'Ân', 'Nhtan@bvu.edu.vn', '0123456788'),
('17031223', N'Tô', N'Đình Đức', N'Anh', 'anh@bvu.edu.vn', '0123456787')

insert into DETAI values 
('14866', N'Xây dựng website BVU', 10000000, '2018-11-15', 12, N'Đã nghiệm thu', '2019-12-15'),
('16756', N'Xây dựng website quản lý phòng trọ', 15000000, '2019-11-10', 10, N'Quá hạn', ''),
('16758', N'Xây dựng website quản lý việc làm', 15000000, '2019-11-10', 18, N'Đang thực hiện', '')
                                      
insert into SINHVIEN_DETAI values
('16756', '17032381', 1),
('16756', '17030041', 0),
('16758', '17031223', 1),
('14866', '17032381', 0),
('14866', '17030041', 1)