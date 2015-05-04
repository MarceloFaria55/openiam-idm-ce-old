use openiam;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME='RECONCILIATION_CONFIG' AND column_name='SEARCH_FILTER') 
	ALTER TABLE RECONCILIATION_CONFIG ADD SEARCH_FILTER NVARCHAR(200) NULL;


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME='RECONCILIATION_CONFIG' AND column_name='UPDATED_SINCE') 
	ALTER TABLE RECONCILIATION_CONFIG ADD  UPDATED_SINCE DATETIME NULL;
