/*Напишите запрос, возвращающий все типы счетов и открытые счета этих типов (дл сравнения с таблицей product используйте столбец product_cd таблицы account). Должны быть включены все типы счетов, даже если не был открыт ни один счет определенного типа*/
SELECT p.product_cd, a.account_id, a.cust_id, a.avail_balance
FROM product p LEFT OUTER JOIN account a
ON p.product_cd = a.product_cd;

/*Переформулируйте предыдущий запрос и примените другой тип внешнего соединения (т.е. если в предыдущем упражнении использовалось левостороннее внешнее соединение, используйте правостороннее внешнее соединение), так чтобы результаты были такими же, что и в предыдущем упражнении*/
SELECT p.product_cd, a.account_id, a.cust_id, a.avail_balance
FROM account a RIGHT OUTER JOIN product p 
ON p.product_cd = a.product_cd;

/*Проведите внешнее соединение таблицы account с таблицей individual и business (посредством столбца account.cust_id) таким образом, чтобы результирующий набор содержал по одной строке для каждого счета. Должны быть включены столбцы count,account_id, account.product_cd, individual.fname, individual.lname и business.name.*/
SELECT ai.account_id, ai.product_cd, ai.fname, ai.lname, b.name
FROM 
(SELECT a.account_id, a.product_cd, a.cust_id, i.fname, i.lname
FROM account a 
LEFT OUTER JOIN individual i
ON a.cust_id = i.cust_id) ai
LEFT OUTER JOIN business b
ON ai.cust_id = b.cust_id
ORDER BY ai.account_id;


/*Разраотайте запрос, который сформирует набор (1, 2, 3...99, 100). Совет: используйте пперекресное соединение как минимум с двумя подзапрсами в блоке from.*/
SELECT one.num + ten.num + 1
FROM 
(SELECT 0 num 
UNION ALL 
SELECT 1 num
UNION ALL 
SELECT 2 num
UNION ALL 
SELECT 3 num
UNION ALL 
SELECT 4 num
UNION ALL 
SELECT 5 num
UNION ALL 
SELECT 6 num
UNION ALL 
SELECT 7 num
UNION ALL 
SELECT 8 num
UNION ALL 
SELECT 9 num) one
CROSS JOIN
(SELECT 0 num
UNION ALL 
SELECT 10 num
UNION ALL 
SELECT 20 num
UNION ALL 
SELECT 30 num
UNION ALL 
SELECT 40 num
UNION ALL 
SELECT 50 num
UNION ALL 
SELECT 60 num
UNION ALL 
SELECT 70 num
UNION ALL 
SELECT 80 num
UNION ALL 
SELECT 90 num) ten;


