USE MCFGA_BIZ_DEMO09102024
GO

-- ============================================
-- ใช้ T_SALESORDERH อยากทราบว่าใบ SALESORDER ไหนที่ถูกคัดลอกมา
-- และเปรียบเทียบระหว่างใบต้นฉบับและใบคัดลอก
-- ============================================


SELECT
    C.VOUCHERNO,
    C.INPDATE,
    C.CUSTOMERCODE,
    C.CURRENCYCODE,
    C.RATE,
    C.TOTALAMOUNT_SC,
    C.DEPTCODE,
    C.INCHARGECODE,
    C.COMPANY,

    O.VOUCHERNO,
    O.INPDATE,
    O.DEPTCODE,
    O.WAREHOUSE,
    O.GOODSCODE,
    O.UNITPRICE,
    O.QTY,
    O.INPAMOUNT_SC
FROM
    T_SALESORDERH AS C
    INNER JOIN T_SALESORDERD AS O
        ON O.VOUCHERNO = C.COPYVOUCHERNO
WHERE
    C.COPYVOUCHERNO IS NOT NULL
        AND LEN(C.COPYVOUCHERNO) > 0

