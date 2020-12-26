
--CREATE FUNCTION FN_ENCRIPTIONS(@str varchar(250))
--RETURNS varbinary(500)
--AS
--BEGIN 
--DECLARE @encript varbinary(500)
--SET @encript = ENCRYPTBYPASSPHRASE('KEY',@str)
--RETURN (@encript)
--END
--GO

--CREATE FUNCTION FN_DECRIPTIONS(@encryp varbinary(500))
--RETURNS varchar(250)
--AS
--BEGIN
--DECLARE @decript varbinary(500)
--SET @decript = DECRYPTBYPASSPHRASE('KEY',@encryp)
--RETURN (@decript)
--END
--GO


CREATE PROCEDURE CountDate_5 @name varchar(20), @date1 date, @date2 date AS
BEGIN
DECLARE @error VARCHAR(20)
SET @error = 'Некоректно задані дати';
IF (@date1<=@date2) 
BEGIN
CREATE TABLE Дати (Прізвище_капітана CHAR(20),Кількість_рейсів INT);
INSERT INTO Дати SELECT [Прізвище] ,
COUNT(Клієнти.[Код_клієнта]) AS кількість
FROM (Клієнти INNER JOIN [Перевезення]
ON Клієнти.[Код_клієнта]=[Перевезення].[Код_клієнта]
INNER JOIN [Капітани]
ON [Капітани].[Код_капітана] = [Перевезення].[Код_перевезення])
WHERE [Перевезення].[Дата_перевезення] BETWEEN @date1 AND @date2
GROUP BY [Прізвище];
END;
ELSE SELECT @error;
END

--SELECT Прізвище, [Ім'я], [dbo].[FN_ENCRIPTIONS](Номер_телефону) AS Шифр
--FROM Капітани

EXEC CountDate_5 'Прізвище', '2020-01-01', '2020-12-12';
select * from Дати
