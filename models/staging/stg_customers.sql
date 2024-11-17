WITH raw_customers AS (
    SELECT *
    FROM {{ source('JAFFLE_SHOP', 'raw_customers') }}
)

SELECT 
    CAST(ID AS VARCHAR(100)) AS ID,
    CAST(NAME AS VARCHAR(255)) AS NAME,
    CAST(SOURCE AS VARCHAR(100)) AS SOURCE,
    GETDATE() AS UPDATE_DATE
FROM raw_customers