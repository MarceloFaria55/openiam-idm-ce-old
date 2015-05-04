use openiam;
CREATE TABLE `IDM_AUDIT_LOG_CUSTOM` (
  `CUSTOM_LOG_ID` bigint NOT NULL AUTO_INCREMENT,
  `LOG_ID` varchar(32) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `TYPE` INTEGER NOT NULL,
  `DISPLAY_ORDER` INTEGER NOT NULL,
  PRIMARY KEY (`CUSTOM_LOG_ID`),
  KEY `FK_LOG_ID` (`LOG_ID`),
 CONSTRAINT `FK_LOG_ID` FOREIGN KEY (`LOG_ID`) 
 REFERENCES `IDM_AUDIT_LOG` (`LOG_ID`)
) ENGINE=InnoDB;


INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME1, ial.CUSTOM_ATTRVALUE1, 0, 1 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME1 IS NOT NULL AND ial.CUSTOM_ATTRVALUE1 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME2, ial.CUSTOM_ATTRVALUE2, 0, 2 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME2 IS NOT NULL AND ial.CUSTOM_ATTRVALUE2 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME3, ial.CUSTOM_ATTRVALUE3, 0, 3 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME3 IS NOT NULL AND ial.CUSTOM_ATTRVALUE3 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME4, ial.CUSTOM_ATTRVALUE4, 0, 4 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME4 IS NOT NULL AND ial.CUSTOM_ATTRVALUE4 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME5, ial.CUSTOM_ATTRVALUE5, 0, 5 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME5 IS NOT NULL AND ial.CUSTOM_ATTRVALUE5 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME6, ial.CUSTOM_ATTRVALUE6, 0, 6 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME6 IS NOT NULL AND ial.CUSTOM_ATTRVALUE6 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME7, ial.CUSTOM_ATTRVALUE7, 0, 7 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME7 IS NOT NULL AND ial.CUSTOM_ATTRVALUE7 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME8, ial.CUSTOM_ATTRVALUE8, 0, 8 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME8 IS NOT NULL AND ial.CUSTOM_ATTRVALUE8 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME9, ial.CUSTOM_ATTRVALUE9, 0, 9 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME9 IS NOT NULL AND ial.CUSTOM_ATTRVALUE9 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_ATTRNAME10, ial.CUSTOM_ATTRVALUE10, 0, 10
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_ATTRNAME10 IS NOT NULL AND ial.CUSTOM_ATTRVALUE10 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME1, ial.CUSTOM_PARAMVALUE1, 1, 1 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME1 IS NOT NULL AND ial.CUSTOM_PARAMVALUE1 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME2, ial.CUSTOM_PARAMVALUE2, 1, 2 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME2 IS NOT NULL AND ial.CUSTOM_PARAMVALUE2 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME3, ial.CUSTOM_PARAMVALUE3, 1, 3 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME3 IS NOT NULL AND ial.CUSTOM_PARAMVALUE3 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME4, ial.CUSTOM_PARAMVALUE4, 1, 4 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME4 IS NOT NULL AND ial.CUSTOM_PARAMVALUE4 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME5, ial.CUSTOM_PARAMVALUE5, 1, 5 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME5 IS NOT NULL AND ial.CUSTOM_PARAMVALUE5 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME6, ial.CUSTOM_PARAMVALUE6, 1, 6 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME6 IS NOT NULL AND ial.CUSTOM_PARAMVALUE6 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME7, ial.CUSTOM_PARAMVALUE7, 1, 7 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME7 IS NOT NULL AND ial.CUSTOM_PARAMVALUE7 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME8, ial.CUSTOM_PARAMVALUE8, 1, 8 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME8 IS NOT NULL AND ial.CUSTOM_PARAMVALUE8 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME9, ial.CUSTOM_PARAMVALUE9, 1, 9 
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME9 IS NOT NULL AND ial.CUSTOM_PARAMVALUE9 IS NOT NULL;

INSERT INTO IDM_AUDIT_LOG_CUSTOM ( LOG_ID,NAME,VALUE,TYPE,DISPLAY_ORDER) 
SELECT  ial.LOG_ID, ial.CUSTOM_PARAMNAME10, ial.CUSTOM_PARAMVALUE10, 1, 10
FROM IDM_AUDIT_LOG as ial WHERE ial.CUSTOM_PARAMNAME10 IS NOT NULL AND ial.CUSTOM_PARAMVALUE10 IS NOT NULL; 




ALTER TABLE IDM_AUDIT_LOG
DROP COLUMN `CUSTOM_PARAMVALUE10` , DROP COLUMN `CUSTOM_PARAMVALUE9` , 
DROP COLUMN `CUSTOM_PARAMVALUE8` , DROP COLUMN `CUSTOM_PARAMVALUE7` , 
DROP COLUMN `CUSTOM_PARAMVALUE6` , DROP COLUMN `CUSTOM_PARAMVALUE5` , 
DROP COLUMN `CUSTOM_PARAMVALUE4` , DROP COLUMN `CUSTOM_PARAMVALUE3` , 
DROP COLUMN `CUSTOM_PARAMVALUE2` , DROP COLUMN `CUSTOM_PARAMVALUE1` , 
DROP COLUMN `CUSTOM_PARAMNAME10` , DROP COLUMN `CUSTOM_PARAMNAME9` , 
DROP COLUMN `CUSTOM_PARAMNAME8` , DROP COLUMN `CUSTOM_PARAMNAME7` , 
DROP COLUMN `CUSTOM_PARAMNAME6` , DROP COLUMN `CUSTOM_PARAMNAME5` , 
DROP COLUMN `CUSTOM_PARAMNAME4` , DROP COLUMN `CUSTOM_PARAMNAME3` , 
DROP COLUMN `CUSTOM_PARAMNAME2` , DROP COLUMN `CUSTOM_PARAMNAME1` ,
DROP COLUMN `CUSTOM_ATTRVALUE10` , DROP COLUMN `CUSTOM_ATTRVALUE9` , 
DROP COLUMN `CUSTOM_ATTRVALUE8` , DROP COLUMN `CUSTOM_ATTRVALUE7` , 
DROP COLUMN `CUSTOM_ATTRVALUE6` , DROP COLUMN `CUSTOM_ATTRVALUE5` , 
DROP COLUMN `CUSTOM_ATTRVALUE4` , DROP COLUMN `CUSTOM_ATTRVALUE3` , 
DROP COLUMN `CUSTOM_ATTRVALUE2` , DROP COLUMN `CUSTOM_ATTRVALUE1` , 
DROP COLUMN `CUSTOM_ATTRNAME10` , DROP COLUMN `CUSTOM_ATTRNAME9` , 
DROP COLUMN `CUSTOM_ATTRNAME8` , DROP COLUMN `CUSTOM_ATTRNAME7` , 
DROP COLUMN `CUSTOM_ATTRNAME6` , DROP COLUMN `CUSTOM_ATTRNAME5` , 
DROP COLUMN `CUSTOM_ATTRNAME4` , DROP COLUMN `CUSTOM_ATTRNAME3` , 
DROP COLUMN `CUSTOM_ATTRNAME2` , DROP COLUMN `CUSTOM_ATTRNAME1` , 
DROP COLUMN `ACTION_END_DATETIME`, 
DROP COLUMN `ORIG_OBJECT_STATE`,
DROP COLUMN `NEW_OBJECT_STATE`;

ALTER TABLE IDM_AUDIT_LOG_CUSTOM
MODIFY CUSTOM_LOG_ID varchar(32) NOT NULL;