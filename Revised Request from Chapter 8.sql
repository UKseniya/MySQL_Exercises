SELECT 'ALERT! : Account #1 Has Incorect Balance!'
FROM account
WHERE (avail_balance, pending_balance) <>
(SELECT SUM (<expression to generate available balance>),
SUM (<expression to generate avaiable balance>)
FROM transaction
WHERE account_id = 1)
AND account_id = 1;