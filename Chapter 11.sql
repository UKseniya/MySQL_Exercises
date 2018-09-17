/*Перепишите следующий запрос, используйющий простое выражение case, таким образом, чтобы получить аналогичные результаты с помощью выражения case с перебором вариантов. Попытайтесь свести к минимуму количество блоков when.
SELECT emp_id,
CASE title
WHEN 'President' THEN 'MANAGEMENT'
WHEN 'Vice President' THEN 'MANAGEMENT'
WHEN 'Treasurer' THEN 'MANAGEMENT'
WHEN 'Loan Manager' THEN 'MANAGEMENT'
WHEN 'Operations Manager' THEN 'Operations'
WHEN 'Head Teller' THEN 'Operations'
WHEN 'Teller' THEN 'Operations'
ELSE 'Unknown'
END
FROM employee;*/
SELECT emp_id,
CASE 
WHEN title LIKE '%President' OR title = 'Treasurer' OR title = 'Loan Manager' 
THEN 'MANAGEMENT'
WHEN title = 'Operations Manager' OR title LIKE '%Teller'
THEN 'Operations'
ELSE 'Unknown'
END job_title
FROM employee;


/*Перепишите следующий запрос так, чтобы результирующий набор содержал всего одну строку и четыре стобца (по одному для каждого отделения). Назовите столбцы branch_1, branch_2 и т.д.
SELECT open_branch_id, COUNT(*)
FROM account
GROUP BY open_branch_id;*/
SELECT 
SUM(CASE 
WHEN open_branch_id = 1 THEN 1 ELSE 0 END) branch_1,
SUM(CASE 
WHEN open_branch_id = 2 THEN 1 ELSE 0 END) branch_2,
SUM(CASE 
WHEN open_branch_id = 3 THEN 1 ELSE 0 END) branch_3,
SUM(CASE 
WHEN open_branch_id = 4 THEN 1 ELSE 0 END) branch_4
FROM account;






