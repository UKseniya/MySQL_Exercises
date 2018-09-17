/*Заполните в следующем запросе пробелы, чтобы получить такие результаты*/
SELECT e.emp_id, e.fname, e.lname, b.name
FROM employee e INNER JOIN branch b
ON e.assigned_branch_id = b.branch_id;

/*Напищите запрос, по которому для каждого клиента-физического лица (customer.cust_type_cd = 'I') возвращаются ID счета, федеральный ID и тип созданного счета*/
SELECT a.account_id, c.fed_id, p.name 
FROM account a 
INNER JOIN customer c 
ON a.cust_id = c.cust_id
INNER JOIN product p 
ON a.product_cd = p.product_cd
WHERE c.cust_type_cd = 'I';

/*Создайте запрос для выбора всех сотрудников, начальник котороых приписан к другому отделу. Извлеките ID, имя и фамилию сотрудника*/
SELECT e.emp_id, e.fname, e.lname
FROM employee e INNER JOIN employee emg
ON e.superior_emp_id = emg.emp_id
WHERE emg.dept_id != e.dept_id;