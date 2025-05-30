USE MCFGA_BIZ_DEMO09102024
GO


-- ============================================
-- รายงานข้อมูลจากตาราง T_SALESORDERH
-- ต้องการดึงข้อมูลดังต่อไปนี้:
--   a.  เลขที่ใบสั่งขาย (VOUCHERNO)
--   b.  วันที่บันทึกเอกสาร (INPDATE)
--   c.  รหัสลูกค้า (CUSTOMERCODE)
--   d.  ชื่อลูกค้า (CUSTOMER_NAME)
--   e.  รหัสแผนก (DEPTCODE)
--   f.  ชื่อแผนก (DEPARTMENT_NAME)
--   g.  รหัสผู้รับผิดชอบเอกสาร (INCHARGECODE)
--   h.  ชื่อผู้รับผิดชอบเอกสาร (INCHARGE_NAME)
--   i.  ยอดรวมสุทธิ (TOTALAMOUNT_SC)
-- ============================================

SELECT
    VOUCHERNO,
    INPDATE,
    CUSTOMERCODE,
    M.NAME AS [CUSTOMER_NAME],      -- ชื่อลูกค้า
    DEPTCODE,
    MD.NAME AS [DEPARTMENT_NAME],   -- ชื่อแผนก
    INCHARGECODE,
    ME.NAME AS [INCHARGE_NAME],     -- ชื่อคนออกเอกสาร
    TOTALAMOUNT_SC
FROM
    T_SALESORDERH AS T
        INNER JOIN M_CORRESPONDENT M ON CUSTOMERCODE = T.CUSTOMERCODE
        INNER JOIN M_DEPARTMENT MD ON DEPTCODE = T.DEPTCODE
        INNER JOIN M_EMPLOYEE ME ON INCHARGECODE = T.INCHARGECODE
