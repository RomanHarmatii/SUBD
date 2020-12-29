--CREATE
--TRIGGER Delete_Клієнт ON [Port] 
--INSTEAD OF DELETE 
--AS
--BEGIN
--DECLARE @Old INT
--SELECT @Old = [Код_порту] FROM deleted
--UPDATE [Port] SET Код_порту=1 WHERE Код_порту=@Old
--END

--DELETE FROM [Port] WHERE [Код_порту] = 2 ;
--SELECT * FROM [Port];

CREATE
TRIGGER Посада
ON Працівники
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = Посада FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END

