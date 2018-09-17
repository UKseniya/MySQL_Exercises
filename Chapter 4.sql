/*Создайте запрос, выбирающий все счета, открытые в 2002 г*/
SELECT account_id, open_date
FROM account
WHERE open_date BETWEEN '2002-01-01' AND '2002-12-31';

/*Создайте запрос, выбирающий всех клиентов-физических лиц, второй буквой фамилии которых является буква 'a' и есть 'e' в любой позиции после 'a'*/
SELECT fname, lname 
FROM individual
WHERE lname LIKE '_a%e%';