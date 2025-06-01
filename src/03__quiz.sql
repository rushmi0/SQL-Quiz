USE MCFGA_BIZ_DEMO09102024
GO

-- ============================================
-- ใช้ T_SALESORDERH อยากทราบราคาหลังจากคำนวณอัตราแลกเปลี่ยนค่าเงินในกรณีที่ CURRENCY ไม่ใช่ “THB”
-- ============================================

SELECT
    H.CURRENCYCODE,
    H.TOTALAMOUNT_SC,
    CASE
        WHEN H.CURRENCYCODE = 'USD' THEN H.TOTALAMOUNT_SC * 32.6
        WHEN H.CURRENCYCODE = 'JPY' THEN H.TOTALAMOUNT_SC * 0.23
        ELSE H.TOTALAMOUNT_SC
        END AS IN_THB
FROM
    T_SALESORDERH H
