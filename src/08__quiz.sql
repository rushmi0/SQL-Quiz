USE MCFGA_BIZ_DEMO09102024
GO


-- ============================================
-- ใช้ T_SALESORDERH อยากทราบราคาเฉลี่ยของ SALESORDER
-- ============================================

SELECT
    AVG(TOTALAMOUNT_SC) AS [AVG_SC]
FROM
    T_SALESORDERH;

