-- ============================================================
-- MIGRATION SCRIPT
-- ============================================================
-- Target: PROD.PROD_VIEW
-- ============================================================

USE DATABASE PROD;
USE SCHEMA PROD_VIEW;


-- ------------------------------------------------------------
-- CREATE OBJECTS
-- ------------------------------------------------------------

CREATE OR REPLACE view VIEW1_NEW(
	CUSTOMER_ID,
	CUSTOMER_NAME,
	ORDER_ID,
	AMOUNT
) as
SELECT 
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.amount
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id;

CREATE OR REPLACE view VIEW1(
	ID,
	CATEGORY,
	AMOUNT
) as
SELECT id, category, amount
FROM base_table
WHERE amount > 250;


-- ------------------------------------------------------------
-- ALTER OBJECTS
-- ------------------------------------------------------------

CREATE OR REPLACE view VIEW1_RENAME(
	ID,
	CATEGORY,
	AMOUNT
) as
SELECT id, category, amount
FROM base_table
WHERE amount > 250;

CREATE OR REPLACE view VIEW3(
	CUSTOMER_NAME,
	AMOUNT
) as
SELECT 
    v1.customer_name,
    v2.amount
FROM view1_new v1
JOIN view2 v2 
ON v1.customer_id = v2.customer_id;


-- ============================================================
-- END - 4 statement(s)
-- ============================================================