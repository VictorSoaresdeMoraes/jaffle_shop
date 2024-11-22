WITH orders AS (
SELECT *
FROM JAFFLE_SHOP.RAW.raw_orders
)

SELECT 
    CAST(ID AS VARCHAR(100)) AS ID,
    CAST(CUSTOMER AS VARCHAR(100)) AS CUSTOMER_ID,
    CAST(STORE_ID AS VARCHAR(100)) AS STORE_ID,
    CAST(ORDERED_AT AS DATETIME) AS ORDERED_DATE,
    CAST(SUBTOTAL AS NUMERIC(9,2)) AS SUBTOTAL,
    CAST(TAX_PAID AS NUMERIC(9,2)) AS TAX_PAID,
    CAST(ORDER_TOTAL AS NUMERIC(9,2)) AS TOTAL,
    CAST(SOURCE AS VARCHAR(100)) AS SOURCE,
    GETDATE() AS UPDATE_DATE
FROM orders