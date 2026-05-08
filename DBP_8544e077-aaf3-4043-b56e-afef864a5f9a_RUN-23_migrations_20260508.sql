-- ============================================================
-- MIGRATION SCRIPT
-- ============================================================
-- Target: SCHEMA_DEV.COMMON_DATA
-- ============================================================

USE DATABASE SCHEMA_DEV;
USE SCHEMA COMMON_DATA;


-- ------------------------------------------------------------
-- DROP OBJECTS
-- ------------------------------------------------------------

DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."SALES_COMMON_TMP";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."SETTINGS";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."DATA_TMP";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."SALES_COMMON";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."DATA_OLD";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."FIN_COMMON_OLD";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."CONFIG";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."HR_COMMON";
DROP TABLE IF EXISTS "SCHEMA_DEV"."COMMON_DATA"."FIN_COMMON";

-- ============================================================
-- END - 9 statement(s)
-- ============================================================