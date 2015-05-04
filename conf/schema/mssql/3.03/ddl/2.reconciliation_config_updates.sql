use openiam;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME='RECONCILIATION_CONFIG' AND column_name='TARGET_SYS_SEARCH_FILTER') 
	ALTER TABLE RECONCILIATION_CONFIG ADD TARGET_SYS_SEARCH_FILTER NVARCHAR(200) NULL;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME='RECONCILIATION_CONFIG' AND column_name='MATCH_SCRIPT') 
	ALTER TABLE RECONCILIATION_CONFIG ADD MATCH_SCRIPT NVARCHAR(120) NULL;
