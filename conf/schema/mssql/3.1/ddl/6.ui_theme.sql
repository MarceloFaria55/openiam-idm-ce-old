use openiam;

IF EXISTS (SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE TABLE_CATALOG = 'openiam' AND TABLE_NAME='CONTENT_PROVIDER' AND CONSTRAINT_NAME = 'CP_UI_THEME') 
	DROP INDEX CP_UI_THEME ON CONTENT_PROVIDER;

IF EXISTS (SELECT * FROM information_schema.columns WHERE TABLE_CATALOG='openiam' AND table_name = 'CONTENT_PROVIDER' AND column_name = 'UI_THEME_ID') 
	ALTER TABLE CONTENT_PROVIDER DROP COLUMN UI_THEME_ID;

IF EXISTS (SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE TABLE_CATALOG = 'openiam' AND TABLE_NAME='URI_PATTERN' AND CONSTRAINT_NAME = 'URI_PATTERN_UI_THEME') 
	DROP INDEX URI_PATTERN_UI_THEME ON URI_PATTERN;

IF EXISTS (SELECT * FROM information_schema.columns WHERE TABLE_CATALOG='openiam' AND table_name = 'URI_PATTERN' AND column_name = 'UI_THEME_ID') 
	ALTER TABLE URI_PATTERN DROP COLUMN UI_THEME_ID;



IF OBJECT_ID('UI_THEME', 'U') IS NOT NULL
	DROP TABLE UI_THEME;

CREATE TABLE UI_THEME(
	UI_THEME_ID NVARCHAR(32) NOT NULL,
	UI_THEME_NAME NVARCHAR(100) NOT NULL,
	URL NVARCHAR(300) NOT NULL,
	PRIMARY KEY(UI_THEME_ID)
) 

ALTER TABLE UI_THEME ADD CONSTRAINT UI_THEME_NAME_UNIUE UNIQUE(UI_THEME_NAME);

ALTER TABLE CONTENT_PROVIDER ADD UI_THEME_ID NVARCHAR(32) NULL;
ALTER TABLE URI_PATTERN ADD UI_THEME_ID NVARCHAR(32) NULL;

ALTER TABLE CONTENT_PROVIDER ADD CONSTRAINT CP_UI_THEME FOREIGN KEY (UI_THEME_ID) REFERENCES UI_THEME(UI_THEME_ID);
ALTER TABLE URI_PATTERN ADD CONSTRAINT URI_PATTERN_UI_THEME FOREIGN KEY (UI_THEME_ID) REFERENCES UI_THEME(UI_THEME_ID);