USE MCFGA_BIZ_DEMO09102024
GO


-- ============================================
-- ใช้ T_SALESORDERD อยากทราบยอดขายเฉลี่ยของ SALESORDER ในแต่ละเดือน
-- ============================================


SELECT
    MONTH(INPDATE) AS [MONTH],
    CAST(AVG(INPAMOUNT_SC) AS DECIMAL(10, 2)) AS [AVG_MOUNT]
FROM
    T_SALESORDERD
GROUP BY
    MONTH(INPDATE);




/*
SELECT DISTINCT
    YEAR(INPDATE) AS [YEAR]
FROM
    T_SALESORDERD

SELECT DISTINCT
    MONTH(INPDATE) AS [MONTH]
FROM
    T_SALESORDERD


DECLARE @AVG_SC INT = (
    SELECT
        MONTH(INPDATE),
        AVG(INPAMOUNT_SC)
    FROM
        T_SALESORDERD
    WHERE
        MONTH(INPDATE) = 9
    group by INPDATE)

SELECT @AVG_SC;

*/