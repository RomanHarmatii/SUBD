
DROP TABLE IF EXISTS �����������;
DROP TABLE IF EXISTS ����;
DROP TABLE IF EXISTS ����������;
DROP TABLE IF EXISTS �볺���;
DROP TABLE IF EXISTS ������;
DROP TABLE IF EXISTS �������;
DROP TABLE IF EXISTS ��������;

CREATE TABLE ����������(
���_���������� INTEGER NOT NULL,
������� CHAR(20) NOT NULL,
[��'�] CHAR(20) NOT NULL,
��_������� CHAR(20) NOT NULL, 
������ CHAR(20) NOT NULL,
����� CHAR(20) NOT NULL,
�������� money NOT NULL,
����_���������� date,
����_�������_��_������ date,
PRIMARY KEY (���_����������)
);

CREATE TABLE �볺���(
���_�볺��� INTEGER NOT NULL,
�����_����� CHAR(20) NOT NULL,
Email CHAR(20) NOT NULL,
����������_������ CHAR(100) NOT NULL, 
̳��� CHAR(20) NOT NULL,
����� CHAR(20) NOT NULL,
������ CHAR(20) NOT NULL,
�����_������� INT NOT NULL,
PRIMARY KEY (���_�볺���)
);

CREATE TABLE ������(
���_������� INTEGER NOT NULL,
�����_������� CHAR(20) NOT NULL,
������ CHAR(20) NOT NULL,
�����_������� INT NOT NULL,
���������������� INT NOT NULL, 
����_������� date,
PRIMARY KEY (���_�������)
);

CREATE TABLE �������(
���_������� INTEGER NOT NULL,
������� CHAR(20) NOT NULL,
[��'�] CHAR(20) NOT NULL,
��_������� CHAR(20) NOT NULL, 
����_���������� date,
����� CHAR(20) NOT NULL,
Email CHAR(20) NOT NULL,
PRIMARY KEY (���_�������)
);

CREATE TABLE ��������(
���_�������� INTEGER NOT NULL,
���_����������� datetime,
���_�������� datetime,
[��'��_�������] INT,
ֳ��_����������� money,
PRIMARY KEY (���_��������)
);

CREATE TABLE ����(
���_����� INTEGER NOT NULL,
�����_����� CHAR(20) NOT NULL,
�������� CHAR(20) NOT NULL,
����� CHAR(20) NOT NULL,
������� CHAR(20) NOT NULL,
���������_����� CHAR(20) NOT NULL,
�������_����� CHAR(20) NOT NULL,
PRIMARY KEY (���_�����)
);

CREATE TABLE �����������(
���_����������� INTEGER NOT NULL,
���_����� INTEGER NOT NULL,
���_�������� INTEGER NOT NULL,
���_������� INTEGER NOT NULL,
���_�볺��� INTEGER NOT NULL,
���_���������� INTEGER NOT NULL,
���_������� INTEGER NOT NULL,

CONSTRAINT ������
FOREIGN KEY (���_�����) 
REFERENCES   ����
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ���볺�� 
FOREIGN KEY (���_�볺���) 
REFERENCES   �볺���
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ��������� 
FOREIGN KEY (���_��������) 
REFERENCES   ��������
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT �������� 
FOREIGN KEY (���_�������) 
REFERENCES   �������
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ����������� 
FOREIGN KEY (���_����������) 
REFERENCES   ����������
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ���������� 
FOREIGN KEY (���_�������) 
REFERENCES   ������
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (���_�����������)
);
