USE openiam;
/* 1 */
ALTER TABLE SYNCH_CONFIG ADD USE_SYSTEM_PATH CHAR(1) NOT NULL DEFAULT 'N'; 

/* 2 */

ALTER TABLE LANGUAGE ADD IS_DEFAULT CHAR(1) NOT NULL DEFAULT 'N';
GO
UPDATE LANGUAGE SET IS_DEFAULT='Y' WHERE ID='1';

/* 3 */
ALTER TABLE URI_PATTERN_META_VALUE ALTER COLUMN AM_RES_ATTRIBUTE_ID NVARCHAR(32);

/* 4 */
ALTER TABLE COMPANY DROP CONSTRAINT FK_COMPANY_METADATA_TYPE;
DROP INDEX FK_COMPANY_METADATA_TYPE ON COMPANY;
ALTER TABLE COMPANY DROP COLUMN TYPE_ID;