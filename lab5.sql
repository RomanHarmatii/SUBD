use [Port]
SELECT * FROM Порт;
SELECT * FROM Порт_1;

SELECT * FROM [Порт]
UNION
SELECT * FROM [Порт_1]

SELECT * FROM [Порт]
WHERE [Код_порту] IN (SELECT [Код_порту] FROM [Порт_1]);

SELECT * FROM [Порт_1]
WHERE [Код_порту]  NOT IN (SELECT [Код_порту] FROM [Порт]);

SELECT * FROM Порт,Порт_1;