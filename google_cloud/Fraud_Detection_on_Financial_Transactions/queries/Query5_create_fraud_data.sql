CREATE OR REPLACE TABLE finance.fraud_data_model AS
SELECT
*
FROM finance.fraud_data_sample  
EXCEPT distinct select * from finance.fraud_data_test  