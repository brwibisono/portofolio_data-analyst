DECLARE table_name STRING;

FOR row IN (
  SELECT table_name
  FROM bigquery-public-data.thelook_ecommerce.INFORMATION_SCHEMA.TABLES
  WHERE table_type = 'BASE TABLE'
)
DO
  SET table_name = row.table_name;

  EXECUTE IMMEDIATE FORMAT("""
    CREATE OR REPLACE TABLE `brwibisono.raw_thelook.%s` AS
    SELECT * FROM `bigquery-public-data.thelook_ecommerce.%s`
  """, table_name, table_name);

END FOR;
