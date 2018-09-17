/*Создайте запрос для подсчета числа строк в таблице account*/
SELECT COUNT(*)
FROM account;

/*Измените предыдущий запрос для подсчета числа счетов, имеющихся у каждого клиента. Для каждого клиента выведите ID клиента и количество счетов*/
SELECT cust_id, COUNT(account_id) number_of_accounts 
FROM account 
GROUP BY cust_id;

/*Измените предыдущий запрос так, чттобы в результирующий набор были включены только клиенты, имеющие не менее двух счетов*/
SELECT cust_id, COUNT(account_id) number_of_accounts 
FROM account 
GROUP BY cust_id
HAVING COUNT(account_id)>=2;

/*Найдите общий доступный остаток по типу счетов и отделению, где на каждый тип и отделение приходится более одного счета. Результаты должны быть упорядочены по общему остатку (от наибольшего к наименьшему)*/
SELECT product_cd, open_branch_id,
SUM(avail_balance)
FROM account
GROUP BY product_cd, open_branch_id
HAVING COUNT(account_id)>1
ORDER BY SUM(avail_balance) DESC;