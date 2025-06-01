USE MCFGA_BIZ_DEMO09102024
GO

-- ============================================
-- ใช้ T_SALESORDERH อยากทราบราคาหลังจากคำนวณอัตราแลกเปลี่ยนค่าเงินในกรณีที่ CURRENCY ไม่ใช่ “THB”
-- ============================================

SELECT CURRENCYCODE,
       TOTALAMOUNT_SC,
       CASE
           WHEN CURRENCYCODE = 'USD' THEN TOTALAMOUNT_SC * 32.6
           WHEN CURRENCYCODE = 'JPY' THEN TOTALAMOUNT_SC * 0.23
           ELSE TOTALAMOUNT_SC
           END AS IN_THB
FROM
    T_SALESORDERH
