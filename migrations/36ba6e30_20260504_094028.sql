-- ============================================================
-- MIGRATION SCRIPT
-- ============================================================
-- Target: PROD_DB.QUOTED_PROD
-- ============================================================

USE DATABASE PROD_DB;
USE SCHEMA QUOTED_PROD;


-- ------------------------------------------------------------
-- DROP OBJECTS
-- ------------------------------------------------------------

DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."orders_mixed";
DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."ORDER_DATA";
DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."EXTRA_TABLE";
DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."ORDERS_LOWER";

-- ------------------------------------------------------------
-- CREATE OBJECTS
-- ------------------------------------------------------------

CREATE OR REPLACE TABLE CUSTOMERS (
	CUSTOMER_ID NUMBER(38,0),
	NAME VARCHAR(16777216),
	REGION VARCHAR(16777216)
);


-- ------------------------------------------------------------
-- ALTER OBJECTS
-- ------------------------------------------------------------

ALTER TABLE "PROD_DB"."QUOTED_PROD"."ORDERS" RENAME COLUMN "ID" TO "ORDER_ID";
ALTER TABLE "PROD_DB"."QUOTED_PROD"."ORDERS" ADD COLUMN "AMOUNT" NUMBER(10,2);
ALTER TABLE "PROD_DB"."QUOTED_PROD"."ORDERS" ADD COLUMN "CREATED_AT" TIMESTAMP_NTZ;
ALTER TABLE "PROD_DB"."QUOTED_PROD"."ORDERS" ADD COLUMN "STATUS" VARCHAR(16777216);
ALTER TABLE "PROD_DB"."QUOTED_PROD"."ORDERS" ADD COLUMN "CUSTOMER_ID" NUMBER;

-- ============================================================
-- END - 10 statement(s)
-- ============================================================