--CREATE
--TRIGGER Delete_�볺�� ON [Port] 
--INSTEAD OF DELETE 
--AS
--BEGIN
--DECLARE @Old INT
--SELECT @Old = [���_�����] FROM deleted
--UPDATE [Port] SET ���_�����=1 WHERE ���_�����=@Old
--END

--DELETE FROM [Port] WHERE [���_�����] = 2 ;
--SELECT * FROM [Port];

CREATE
TRIGGER ������
ON ����������
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = ������ FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END

