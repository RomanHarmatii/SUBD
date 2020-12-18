
DROP TABLE IF EXISTS Перевезення;
DROP TABLE IF EXISTS Порт;
DROP TABLE IF EXISTS Працівники;
DROP TABLE IF EXISTS Клієнти;
DROP TABLE IF EXISTS Кораблі;
DROP TABLE IF EXISTS Капітани;
DROP TABLE IF EXISTS Маршрути;

CREATE TABLE Працівники(
Код_працівника INTEGER NOT NULL,
Прізвище CHAR(20) NOT NULL,
[Ім'я] CHAR(20) NOT NULL,
По_батькові CHAR(20) NOT NULL, 
Посада CHAR(20) NOT NULL,
Стать CHAR(20) NOT NULL,
Зарплата money NOT NULL,
Дата_народження date,
Дата_прийому_на_роботу date,
PRIMARY KEY (Код_працівника)
);

CREATE TABLE Клієнти(
Код_клієнта INTEGER NOT NULL,
Назва_команії CHAR(20) NOT NULL,
Email CHAR(20) NOT NULL,
Особливості_компанії CHAR(100) NOT NULL, 
Місто CHAR(20) NOT NULL,
Країна CHAR(20) NOT NULL,
Вулиця CHAR(20) NOT NULL,
Номер_будинку INT NOT NULL,
PRIMARY KEY (Код_клієнта)
);

CREATE TABLE Кораблі(
Код_корабля INTEGER NOT NULL,
Назва_корабля CHAR(20) NOT NULL,
Модель CHAR(20) NOT NULL,
Номер_корабля INT NOT NULL,
Вантажопідйомність INT NOT NULL, 
Дата_випуску date,
PRIMARY KEY (Код_корабля)
);

CREATE TABLE Капітани(
Код_капітана INTEGER NOT NULL,
Прізвище CHAR(20) NOT NULL,
[Ім'я] CHAR(20) NOT NULL,
По_батькові CHAR(20) NOT NULL, 
Дата_народження date,
Стать CHAR(20) NOT NULL,
Email CHAR(20) NOT NULL,
PRIMARY KEY (Код_капітана)
);

CREATE TABLE Маршрути(
Код_маршруту INTEGER NOT NULL,
Час_відправлення datetime,
Час_прибуття datetime,
[Об'єм_вантажу] INT,
Ціна_перевезення money,
PRIMARY KEY (Код_маршруту)
);

CREATE TABLE Порт(
Код_порту INTEGER NOT NULL,
Назва_порту CHAR(20) NOT NULL,
Акваторія CHAR(20) NOT NULL,
Країна CHAR(20) NOT NULL,
Область CHAR(20) NOT NULL,
Населений_пункт CHAR(20) NOT NULL,
Власник_порту CHAR(20) NOT NULL,
PRIMARY KEY (Код_порту)
);

CREATE TABLE Перевезення(
Код_перевезення INTEGER NOT NULL,
Код_порту INTEGER NOT NULL,
Код_маршруту INTEGER NOT NULL,
Код_капітана INTEGER NOT NULL,
Код_клієнта INTEGER NOT NULL,
Код_працівника INTEGER NOT NULL,
Код_корабля INTEGER NOT NULL,

CONSTRAINT ФКПорт
FOREIGN KEY (Код_порту) 
REFERENCES   Порт
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФККлієнт 
FOREIGN KEY (Код_клієнта) 
REFERENCES   Клієнти
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФКМаршрут 
FOREIGN KEY (Код_маршруту) 
REFERENCES   Маршрути
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФККапітан 
FOREIGN KEY (Код_капітана) 
REFERENCES   Капітани
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФКПрацівник 
FOREIGN KEY (Код_працівника) 
REFERENCES   Працівники
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФККорабель 
FOREIGN KEY (Код_корабля) 
REFERENCES   Кораблі
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (Код_перевезення)
);
