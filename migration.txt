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

DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."ORDER_DATA";
DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."orders_mixed";
DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."EXTRA_TABLE";
DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."ORDERS_LOWER";
DROP TABLE IF EXISTS "PROD_DB"."QUOTED_PROD"."ORDERS";

-- ============================================================
-- END - 5 statement(s)
-- ============================================================