CREATE OR REPLACE TABLE finance.table_perf AS
SELECT "Initial_reg" as model_name, *
FROM ML.EVALUATE(MODEL `finance.model_supervised_initial`, (
SELECT *
FROM `finance.fraud_data_model` ))