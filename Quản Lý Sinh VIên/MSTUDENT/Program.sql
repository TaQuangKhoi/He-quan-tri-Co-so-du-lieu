declare @First varchar(50) = 'I love you'
--set @First = 'I love you'
print 'I wanna tell you: ' +  @First

declare @tenKhoa nvarchar(50) = 'CNTT' 
-- set @tenKhoa = 'CNTT'
print @tenKhoa

declare @SoSVCNTT int
select @SoSVCNTT = count(*) from SVien Where makhoa = 'CNTT'
print @SoSVCNTT

while 