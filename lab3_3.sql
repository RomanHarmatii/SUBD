USE [Port]
GO
alter table dbo.Капітани
add Вік INT 
GO

USE [Port]
GO
alter table dbo.Капітани
alter column "Прізвище" CHAR(25) NULL
GO

USE [Port]
GO
alter table dbo.Капітани
drop column Вік
GO
