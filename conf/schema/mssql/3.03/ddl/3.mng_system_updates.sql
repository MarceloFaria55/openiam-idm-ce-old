use openiam;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME='MANAGED_SYS' AND column_name='ATTRIBUTE_NAMES_LOOKUP') 
	ALTER TABLE MANAGED_SYS ADD ATTRIBUTE_NAMES_LOOKUP NVARCHAR(120) NULL;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME='MANAGED_SYS' AND column_name='ATTRIBUTE_NAMES_HNDLR') 
	ALTER TABLE MANAGED_SYS ADD ATTRIBUTE_NAMES_HNDLR NVARCHAR(100) NULL;