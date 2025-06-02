USE MCFGA_BIZ_DEMO09102024
GO


-- ============================================
-- ใช้ M_GOODS ให้เขียน Trigger เพื่อแก้ไข CHANGEDATETIME เมื่อมีการแก้ไขชื่อสินค้า
-- ============================================


ALTER TRIGGER product_name_edite
    ON [M_GOODS]
    AFTER UPDATE
    AS
    BEGIN

        UPDATE M_GOODS
        SET CHANGEDATETIME = GETDATE()
        FROM M_GOODS g
                 INNER JOIN inserted i ON g.CODE = i.CODE
                 INNER JOIN deleted d ON i.CODE = d.CODE
    END