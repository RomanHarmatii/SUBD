Use [Port]

SELECT ���_�������, �������, [��'�] 
FROM ������� WHERE ������� LIKE '%�%' 
ORDER BY ������� ASC;

Use [Port]
SELECT ���_�������, �������, [��'�]
FROM ������� ORDER BY ���_������� DESC;

Use [Port]
SELECT  �������.���_�������, �����������.���_�������
FROM ������� JOIN ����������� ON �����������.���_������� = �������.���_�������;

Use [Port]
SELECT  COUNT(�����������.���_�����������) AS ���_�볺���, �������.���_�������
FROM ����������� JOIN ������� ON �����������.���_����������� = �������.���_�������
GROUP BY �������.���_�������;

