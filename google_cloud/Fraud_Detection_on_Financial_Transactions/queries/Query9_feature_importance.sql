SELECT
  *
FROM
  ML.WEIGHTS(MODEL `finance.model_supervised_initial`,
    STRUCT(true AS standardize))
    