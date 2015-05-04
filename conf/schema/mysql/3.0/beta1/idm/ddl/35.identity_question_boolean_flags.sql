use openiam;

ALTER TABLE IDENTITY_QUESTION ADD COLUMN TEMP_REQUIRED CHAR(1) DEFAULT 'N';
ALTER TABLE IDENTITY_QUESTION ADD COLUMN TEMP_ACTIVE CHAR(1) DEFAULT 'Y';
UPDATE IDENTITY_QUESTION SET TEMP_REQUIRED='Y' WHERE REQUIRED=1;
UPDATE IDENTITY_QUESTION SET TEMP_REQUIRED='N' WHERE REQUIRED=0;
UPDATE IDENTITY_QUESTION SET TEMP_ACTIVE='Y' WHERE ACTIVE=1;
UPDATE IDENTITY_QUESTION SET TEMP_ACTIVE='N' WHERE ACTIVE=0;
ALTER TABLE IDENTITY_QUESTION DROP COLUMN ACTIVE;
ALTER TABLE IDENTITY_QUESTION DROP COLUMN REQUIRED;
ALTER TABLE IDENTITY_QUESTION CHANGE TEMP_REQUIRED REQUIRED CHAR(1) DEFAULT 'N';
ALTER TABLE IDENTITY_QUESTION CHANGE TEMP_ACTIVE ACTIVE CHAR(1) DEFAULT 'Y';