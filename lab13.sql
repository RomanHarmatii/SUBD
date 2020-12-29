Use [Port]
CREATE INDEX index3 ON Перевезення (Код_перевезення, Код_капітана); 
EXEC sp_helpindex 'Перевезення' 

Use [Port]
CREATE INDEX index1 ON Капітани (Код_капітана); 
EXEC sp_helpindex 'Капітани'

EXEC sp_helpindex 'Клієнти'

SET SHOWPLAN_ALL ON;  
go
select [Перевезення].[Код_перевезення], [Клієнти].[Назва_команії]
from [Перевезення] inner join [Клієнти]
on [Перевезення].[Код_перевезення]=[Клієнти].[Код_клієнта]
WHERE [Назва_команії] = 'Transport2';
go
SET SHOWPLAN_ALL OFF;  
go
