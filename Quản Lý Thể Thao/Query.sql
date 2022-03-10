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