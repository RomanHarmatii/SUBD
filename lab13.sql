Use [Port]
CREATE INDEX index3 ON ����������� (���_�����������, ���_�������); 
EXEC sp_helpindex '�����������' 

Use [Port]
CREATE INDEX index1 ON ������� (���_�������); 
EXEC sp_helpindex '�������'

EXEC sp_helpindex '�볺���'

SET SHOWPLAN_ALL ON;  
go
select [�����������].[���_�����������], [�볺���].[�����_�����]
from [�����������] inner join [�볺���]
on [�����������].[���_�����������]=[�볺���].[���_�볺���]
WHERE [�����_�����] = 'Transport2';
go
SET SHOWPLAN_ALL OFF;  
go
