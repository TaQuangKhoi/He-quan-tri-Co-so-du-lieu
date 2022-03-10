-- a. Danh sách các v?n ??ng viên c?a câu l?c b? có mã s? 45
SELECT VDV_TEN, CLB_MA
FROM VDV
WHERE CLB_MA = 45

-- b. Tên các v?n ??ng viên |c?a ??i s? 3| c?a |câu l?c b? có mã s? 27|		
SELECT V.VDV_TEN, V.CLB_MA, VD.DOI_MA
FROM VDV V, VDV_DOI VD
WHERE V.CLB_MA = 27
AND V.VDV_MA = VD.VDV_MA
AND VD.DOI_MA = 3

 -- c. S? l??ng các |tr?n ??u LT1| di?n ra vào |ngày 6/16/90|
 SELECT COUNT(TD.TD_MA)
 FROM TD
 WHERE TD.TD_NGAY = '6/16/90'

 -- d. Mã s? các câu l?c b? và mã s? các ??i
 -- trong ?ó có |nh?ng v?n ??ng viên thu?c 1 l?a tu?i nh? h?n l?a tu?i c?a ??i|
 SELECT C.CLB_MA, D.DOI_MA
 FROM VDV V, DOI D, VDV_DOI VD, CLB C
 WHERE V.VDV_MA = VD.VDV_MA
 AND V.CLB_MA = C.CLB_MA
 AND C.CLB_MA = D.CLB_MA
 AND D.DOI_MA = VD.DOI_MA
 AND V.LT > D.LT

 -- e. ??a ch? và mã s? các câu l?c b?
 -- có 1 ho?c nhi?u ??i tham d? tr?n ??u di?n ra trong phòng mã s? 17 ngày 12/6/90
 SELECT C.*
 FROM CLB C, DOI_TD DT, TD T
 WHERE C.CLB_MA = DT.CLB_MA
 AND T.TD_NGAY = '12/6/90'

 -- f. Danh sách các tr?n ??u
 -- b?t ??u và k?t thúc trong kho?ng th?i gian t? 13g và 16g
 -- di?n ra trên 1 sân c?a phòng mã s? 49
 -- ngày 8/5/90
 SELECT 
 FROM 

 -- g. ??a ch? và tên các v?n ??ng viên
 -- ?ã ch?i ho?c s? ch?i ??i l?i ??i mã s? 1 c?a câu l?c b? mã s? 50

 -- h. S? t?i ?a các tr?n ??u có th? b?t ??u ??ng th?i trong ngày 12/6/90

 -- i. V?i m?i v?n ??ng viên thu?c câu l?c b? 50,
 -- tìm s? l??ng tr?n ??u mà anh ta ?ã tham gia

