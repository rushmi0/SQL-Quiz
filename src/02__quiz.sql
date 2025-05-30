USE MCFGA_BIZ_DEMO09102024
GO

-- ============================================
-- ใช้ T_SALESORDERH อยากทราบยอดรายการ SALES แยกตามลูกค้าแต่ละเจ้า
-- ============================================


SELECT
    *
FROM
    T_SALESORDERH;
SELECT
    M.NAME AS [CUSTOMER_NAME],      -- ชื่อลูกค้า
    M.CODE
FROM
    T_SALESORDERH AS T
        INNER JOIN M_CORRESPONDENT M ON CUSTOMERCODE = T.CUSTOMERCODE

