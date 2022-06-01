ALTER TABLE DETAI
ADD CONSTRAINT CK_TRANGTHAI
check (Trangthai
in (N'Đang thực hiện', N'Quá hạn', N'Đã nghiệm thu', N'Đã hủy')
)