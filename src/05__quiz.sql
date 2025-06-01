USE MCFGA_BIZ_DEMO09102024
GO

-- ============================================
-- ใช้ T_SALESORDERD อยากทราบราคาสุทธิรวมทั ้งใบ SALESORDER ของแต่ละใบ
-- ============================================

SELECT
    VOUCHERNO,
    INPDATE,
    SUM(UNITPRICE * QTY) AS TOTAL_SALES,
    SUM(INPAMOUNT_SC) AS TOTAL_PRICE
FROM
    T_SALESORDERD
GROUP BY
    VOUCHERNO, INPDATE


