-- a
SELECT VDV_TEN, CLB_MA
FROM VDV
WHERE CLB_MA = 45

-- b
SELECT V.VDV_TEN, V.CLB_MA, VD.DOI_MA
FROM VDV V, VDV_DOI VD
WHERE V.CLB_MA = 27
	AND VD.DOI_MA = 3
	AND V.VDV_MA = VD.VDV_MA

 -- c
 SELECT T.TD_MA, D.DOI_MA, D.LT, DT.CLB_MA
 FROM TD T, DOI_TD DT, DOI D
 WHERE T.TD_NGAY = '6/16/90'
	 AND D.LT = 'LT1'
	 AND DT.DOI_MA = D.DOI_MA
	 AND T.TD_MA = DT.TD_MA
	 AND DT.CLB_MA = D.CLB_MA

 -- d
 SELECT C.CLB_MA, D.DOI_MA
 FROM VDV V, DOI D, VDV_DOI VD, CLB C
 WHERE V.VDV_MA = VD.VDV_MA
	 AND V.CLB_MA = C.CLB_MA
	 AND C.CLB_MA = D.CLB_MA
	 AND D.DOI_MA = VD.DOI_MA
	 AND V.LT > D.LT

 -- e
 SELECT C.*
 FROM CLB C, DOI_TD DT, TD T
 WHERE C.CLB_MA = DT.CLB_MA
	AND T.TD_NGAY = '12/6/90'

 -- f.
 SELECT 
 FROM 

 -- g 
SELECT 
FROM 

 -- h 
SELECT

 -- i 
SELECT

 -- j 
SELECT vdv.VDV_MA, vdv.tenvdv, clb.dcclb,
dtd.CLB_MA, count(dtd.matd)
FROM CLB clb, VDV vdv, VDV_DOI vdvd, DOI_TD dtd
WHERE clb.CLB_MA = vdv.CLB_MA
	and vdv.VDV_MA = vdvd.VDV_MA
	and vdvd.DOI_MA = dtd.DOI_MA
	and vdv.CLB_MA dtd.CLB_MA
group by vdv.VDV_MA, vdv. tenvdv, clb.dcclb, dtd.CLB_MA
having count(dtd.matd) >= ALL (
	SELECT count (dtd.matd)
	FROM CLB clb, VDV vdv, VDV_DOI vdvd, DOI_TD dtd
	WHERE clb.CLB_MA = vdv.CLB_MA
		and vdv.VDV_MA = vdvd.VDV_MA
		and vdvd.DOI_MA = dtd.DOI_MA
		and vdv.CLB_MA = dtd.CLB_MA
	group by vdv. VDV_MA, vdv.tenvdv, clb.dcclb, dtd.CLB_MA
)
 -- k 
SELECT COUNT(*)
FROM TD td, PHONG p
WHERE p.PHG_MA = 49

SELECT 
FROM

 -- l 
select *
from VDV vdv
where vdv.VDV_MA not in (
    select distinct vdv.VDV_MA
    from VDV vdv, VDV_DOI vdvd, DOI_TD dtd
    where vdv.CLB_MA = dtd.CLB_MA
        and vdv.VDV_MA = vdvd.VDV_MA
        and vdvd.DOI_MA = dtd.DOI_MA
)