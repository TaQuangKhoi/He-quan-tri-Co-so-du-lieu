-- a. Danh s�ch c�c v?n ??ng vi�n c?a c�u l?c b? c� m� s? 45
SELECT VDV_TEN, CLB_MA
FROM VDV
WHERE CLB_MA = 45

-- b. T�n c�c v?n ??ng vi�n |c?a ??i s? 3| c?a |c�u l?c b? c� m� s? 27|		
SELECT V.VDV_TEN, V.CLB_MA, VD.DOI_MA
FROM VDV V, VDV_DOI VD
WHERE V.CLB_MA = 27
AND V.VDV_MA = VD.VDV_MA
AND VD.DOI_MA = 3

 -- c. S? l??ng c�c |tr?n ??u LT1| di?n ra v�o |ng�y 6/16/90|
 SELECT COUNT(TD.TD_MA)
 FROM TD
 WHERE TD.TD_NGAY = '6/16/90'

 -- d. M� s? c�c c�u l?c b? v� m� s? c�c ??i
 -- trong ?� c� |nh?ng v?n ??ng vi�n thu?c 1 l?a tu?i nh? h?n l?a tu?i c?a ??i|
 SELECT C.CLB_MA, D.DOI_MA
 FROM VDV V, DOI D, VDV_DOI VD, CLB C
 WHERE V.VDV_MA = VD.VDV_MA
 AND V.CLB_MA = C.CLB_MA
 AND C.CLB_MA = D.CLB_MA
 AND D.DOI_MA = VD.DOI_MA
 AND V.LT > D.LT

 -- e. ??a ch? v� m� s? c�c c�u l?c b?
 -- c� 1 ho?c nhi?u ??i tham d? tr?n ??u di?n ra trong ph�ng m� s? 17 ng�y 12/6/90
 SELECT C.*
 FROM CLB C, DOI_TD DT, TD T
 WHERE C.CLB_MA = DT.CLB_MA
 AND T.TD_NGAY = '12/6/90'

 -- f. Danh s�ch c�c tr?n ??u
 -- b?t ??u v� k?t th�c trong kho?ng th?i gian t? 13g v� 16g
 -- di?n ra tr�n 1 s�n c?a ph�ng m� s? 49
 -- ng�y 8/5/90
 SELECT 
 FROM 

 -- g. ??a ch? v� t�n c�c v?n ??ng vi�n
 -- ?� ch?i ho?c s? ch?i ??i l?i ??i m� s? 1 c?a c�u l?c b? m� s? 50

 -- h. S? t?i ?a c�c tr?n ??u c� th? b?t ??u ??ng th?i trong ng�y 12/6/90

 -- i. V?i m?i v?n ??ng vi�n thu?c c�u l?c b? 50,
 -- t�m s? l??ng tr?n ??u m� anh ta ?� tham gia

