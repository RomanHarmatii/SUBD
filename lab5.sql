use [Port]
SELECT * FROM ����;
SELECT * FROM ����_1;

SELECT * FROM [����]
UNION
SELECT * FROM [����_1]

SELECT * FROM [����]
WHERE [���_�����] IN (SELECT [���_�����] FROM [����_1]);

SELECT * FROM [����_1]
WHERE [���_�����]  NOT IN (SELECT [���_�����] FROM [����]);

SELECT * FROM ����,����_1;