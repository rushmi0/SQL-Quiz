USE MCFGA_BIZ_DEMO09102024
GO

-- # Master Table ที่เป็นเป้าหมายของการทดสอบ:
-- M_CORRESPONDENT,
-- M_DEPARTMENT,
-- M_EMPLOYEE,
-- M_GOODS
SELECT
    CODE,
    NAME,
    LANG,
    COMPANY,
    ACTIVEFLAG
FROM
    M_GOODS;



-- # Attribute ส่วน Header ที่สำคัญ
SELECT
    VOUCHERNO,          -- คือหมายเลขเอกสาร
    INPDATE,            -- คือวันที่ออกเอกสาร
    COPYVOUCHERNO,      -- หมายเลขเอกสารที่ถูกคัดลอกมา
    CUSTOMERCODE,       -- รหัสลูกค้า
    CURRENCYCODE,       -- สกุลเงินในเอกสาร ENCY,
    RATE,               -- อัตราแลกเปลี่ยนสกุลเงิน
    TOTALAMOUNT_SC,     -- ราคาสุทธิ
    DEPTCODE,           -- รหัสแผนก
    INCHARGECODE,       -- รหัสคนรับผิดชอบเอกสาร
    COMPANY             -- รหัสบริษัท
FROM
    T_SALESORDERH;


-- # Attribute ส่วน Details ที่สำคัญ
SELECT
    COMPANY,        -- รหัสบริษัท
    VOUCHERNO,      -- หมายเลขเอกสาร
    INPDATE,        -- วันที่ออกเอกสาร
    DEPTCODE,       -- รหัสแผนก
    WAREHOUSE,      -- รหัสคลังเก็บสินค้า
    GOODSCODE,      -- รหัสสินค้า
    UNITPRICE,      -- ราคาต่อหน่วย
    QTY,            -- จำนวนสินค้า
    INPAMOUNT_SC    -- ราคารวม
FROM
    T_SALESORDERD;


