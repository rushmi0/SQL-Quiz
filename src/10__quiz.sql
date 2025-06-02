USE MCFGA_BIZ_DEMO09102024
GO


-- ============================================
-- ใช้ T_SALESORDERD อยากทราบสินค้าและจำนวนรวมของสินค้านั้นๆ แยกตามคลังสินค้า
-- ============================================


SELECT
    D.WAREHOUSE,
    D.GOODSCODE,
    S.NAME AS [PRODUCT_NAME],
    COUNT(D.WAREHOUSE) AS [TOTAL_QTY]
FROM
    T_SALESORDERD D
        INNER JOIN M_GOODS AS S
            ON D.GOODSCODE = S.CODE
        INNER JOIN dbo.T_SALESORDERH AS H
            ON D.VOUCHERNO = H.VOUCHERNO
GROUP BY
    GOODSCODE, S.NAME, D.WAREHOUSE


