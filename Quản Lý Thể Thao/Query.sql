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