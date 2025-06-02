USE MCFGA_BIZ_DEMO09102024
GO


-- ============================================
-- ให้เขียน Store procedure เพื่อแก้ไขข้อมูลของ M_GOODS โดยสามารถแก้ไข ชื่อสินค้า โดยระบุ CODE
-- ============================================


CREATE PROC sp_goods_name_edit
(
    @Name NVARCHAR(100),
    @Code NVARCHAR(100)
)
AS
BEGIN
    UPDATE dbo.M_GOODS
    SET NAME = @Name
        WHERE CODE = @Code
END


EXEC sp_goods_name_edit @Name = N'Android 14', @Code = N'C'

