BEGIN TRANSACTION;
INSERT INTO [Клієнти] 
VALUES (3,'Transport3', 'comp3@emai','немає', 'Одеса','Україна', 'Одеська', 5 );
INSERT INTO [Клієнти] 
VALUES (4,'Transport4', 'comp4@emai','немає', 'Миколаїв','Україна', 'Львівська', 1);
INSERT INTO [Клієнти] 
VALUES (5,'Transport5', 'comp5@emai','немає', 'Стрий', 'Україна', 'Стрийська', 2);
COMMIT;

Select * from Клієнти
