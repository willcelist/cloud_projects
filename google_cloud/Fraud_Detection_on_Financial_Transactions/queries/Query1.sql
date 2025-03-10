
SELECT isFraud, count(*) as cnt
FROM `finance.fraud_data`
WHERE type in ("CASH_OUT", "TRANSFER")
GROUP BY isFraud
