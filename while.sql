-- i = 0
-- b = 2
-- while i < 5:
--     b = b * b
--     i = i + 1

WITH PARAMS AS (
    SELECT O AS I,
           2 AS B,
           5 AS BORDER 
      FROM DUAL
),

RECUR_SQL (I_VAL, OUTCOME) AS (
    SELECT I AS I_VAL,
           B * B AS OUTCOME
      FROM PARAMS
      
    UNION ALL
    
    SELECT I_VAL + 1 AS I_VAL,
           OUTCOME * OUTCOME AS OUTCOME
      FROM RECUR_SQL JOIN PARAMS ON (I_VAL < BORDER)
)

SELECT * FROM RECUR_SQL;
