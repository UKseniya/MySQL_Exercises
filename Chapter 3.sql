/*Извлеките ID, имя и фамилию всех банковских сотрудников. Выполните сортировку по фамилии, а затем по имени.*/
SELECT emp_id, fname, lname 
FROM employee
ORDER BY lname, fname;

/*Извлеките ID счета, ID клиента и доступный остаток всех счетов, имеющих статус 'ACTIVE' и доступный остаток более 2500 долларов*/
SELECT account_id, cust_id, avail_balance
FROM account
WHERE status = 'ACTIVE' and avail_balance > 2500;

/*Напишите запроск таблице account, возвращающий ID сотрудников, открывших счета (используйте столбец account.open_emp_id). Результирующий набор должен включать по одной строке на сотрудника.*/
SELECT DISTINCT open_emp_id 
FROM account;

/*В этом запросе к нескольким наборам данных заполните пробелы так, чтобы получить результат, приведенный ниже*/
SELECT p.product_cd, a.cust_id, a.avail_balance
FROM product p INNER JOIN account a
ON p.product_cd = a.product_cd
WHERE p.product_type_cd = 'ACCOUNT';