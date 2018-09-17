SELECT a.account_id, a.product_cd, a.cust_id, a.avail_balance
FROM account a 
WHERE NOT EXISTS (SELECT 1 
FROM business b
WHERE b.cust_id = a.cust_id);