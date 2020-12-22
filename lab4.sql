use [Port]

Insert into [dbo].[Капітани] values (3, 'Зубенко', 'Михайло','Петрович','чоловіча',  'miailo@gmail.com');

Insert into [dbo].[Клієнти] values (1, 'Transport1','comp1@email','немає','Тернопіль','Україна', 'Київська', 6),
								   (2, 'Transport2','comp2@email','немає','Львів','Україна', 'Сихівська', 8);

BULK INSERT [dbo].[Кораблі]
  FROM 'D:\lab4_1.txt'
  WITH (
  FIELDTERMINATOR = '","',
  ROWTERMINATOR = '\n')

BULK INSERT [dbo].[Працівники]
  FROM 'D:\lab4_2.txt'
  WITH (
  FIELDTERMINATOR = '","',
  ROWTERMINATOR = '\n')

UPDATE [Кораблі] SET Модель = 'Модель1' WHERE Назва_корабля = 'Назва2';
UPDATE [Кораблі] SET Модель = 'Модель2'  WHERE Назва_корабля = 'Назва1';

Delete from [Кораблі] where [Модель] is NULL;
