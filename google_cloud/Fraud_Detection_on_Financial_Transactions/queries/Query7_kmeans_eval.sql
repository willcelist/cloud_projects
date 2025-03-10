SELECT
  centroid_id, sum(isfraud) as fraud_cnt,  count(*) total_cnt
FROM
  ML.PREDICT(MODEL `finance.model_unsupervised`,
    (
    SELECT *
    FROM  `finance.fraud_data_test`))
group by centroid_id
order by centroid_id