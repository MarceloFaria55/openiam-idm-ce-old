use openiam;

--  MODIFY USER ATTRIBUTES --

DELIMITER $$

DROP PROCEDURE IF EXISTS MODIFY_USER_ATTRIBUTES$$

CREATE PROCEDURE MODIFY_USER_ATTRIBUTES()
	BEGIN
		IF EXISTS (SELECT * FROM information_schema.columns WHERE table_schema='openiam' AND table_name = 'USER_ATTRIBUTES' AND column_name = 'IS_MULTIVALUED') THEN
			ALTER TABLE USER_ATTRIBUTES DROP COLUMN IS_MULTIVALUED;
 		END IF;
	END$$
DELIMITER ;

call MODIFY_USER_ATTRIBUTES();
DROP PROCEDURE MODIFY_USER_ATTRIBUTES;

ALTER TABLE USER_ATTRIBUTES ADD COLUMN IS_MULTIVALUED char(1) NOT NULL DEFAULT 'N';

DROP TABLE IF EXISTS USER_ATTRIBUTE_VALUES;

CREATE TABLE USER_ATTRIBUTE_VALUES (
  USER_ATTRIBUTE_ID varchar(32) NOT NULL,
  VALUE varchar(255),
  CONSTRAINT USER_ATTRIBUTE_VALUES_FK FOREIGN KEY (USER_ATTRIBUTE_ID) REFERENCES USER_ATTRIBUTES(ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--  MODIFY GROUP ATTRIBUTES --

DELIMITER $$

DROP PROCEDURE IF EXISTS MODIFY_GROUP_ATTRIBUTES$$

CREATE PROCEDURE MODIFY_GROUP_ATTRIBUTES()
	BEGIN
		IF EXISTS (SELECT * FROM information_schema.columns WHERE table_schema='openiam' AND table_name = 'GRP_ATTRIBUTES' AND column_name = 'IS_MULTIVALUED') THEN
			ALTER TABLE GRP_ATTRIBUTES DROP COLUMN IS_MULTIVALUED;
 		END IF;
	END$$
DELIMITER ;

call MODIFY_GROUP_ATTRIBUTES();
DROP PROCEDURE MODIFY_GROUP_ATTRIBUTES;

ALTER TABLE GRP_ATTRIBUTES ADD COLUMN IS_MULTIVALUED char(1) NOT NULL DEFAULT 'N';

DROP TABLE IF EXISTS GROUP_ATTRIBUTE_VALUES;

CREATE TABLE GROUP_ATTRIBUTE_VALUES (
  GROUP_ATTRIBUTE_ID varchar(32) NOT NULL,
  VALUE varchar(255),
  CONSTRAINT GROUP_ATTRIBUTE_VALUES_FK FOREIGN KEY (GROUP_ATTRIBUTE_ID) REFERENCES GRP_ATTRIBUTES(ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--  MODIFY ROLE ATTRIBUTES --

DELIMITER $$

DROP PROCEDURE IF EXISTS MODIFY_ROLE_ATTRIBUTES$$

CREATE PROCEDURE MODIFY_ROLE_ATTRIBUTES()
	BEGIN
		IF EXISTS (SELECT * FROM information_schema.columns WHERE table_schema='openiam' AND table_name = 'ROLE_ATTRIBUTE' AND column_name = 'IS_MULTIVALUED') THEN
			ALTER TABLE ROLE_ATTRIBUTE DROP COLUMN IS_MULTIVALUED;
 		END IF;
	END$$
DELIMITER ;

call MODIFY_ROLE_ATTRIBUTES();
DROP PROCEDURE MODIFY_ROLE_ATTRIBUTES;

ALTER TABLE ROLE_ATTRIBUTE ADD COLUMN IS_MULTIVALUED char(1) NOT NULL DEFAULT 'N';

DROP TABLE IF EXISTS ROLE_ATTRIBUTE_VALUES;

CREATE TABLE ROLE_ATTRIBUTE_VALUES (
  ROLE_ATTRIBUTE_ID varchar(32) NOT NULL,
  VALUE varchar(255),
  CONSTRAINT ROLE_ATTRIBUTE_VALUES_FK FOREIGN KEY (ROLE_ATTRIBUTE_ID) REFERENCES ROLE_ATTRIBUTE(ROLE_ATTR_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--  MODIFY ORGANIZATION ATTRIBUTES --

DELIMITER $$

DROP PROCEDURE IF EXISTS MODIFY_ORGANIZATION_ATTRIBUTES$$

CREATE PROCEDURE MODIFY_ORGANIZATION_ATTRIBUTES()
	BEGIN
		IF EXISTS (SELECT * FROM information_schema.columns WHERE table_schema='openiam' AND table_name = 'COMPANY_ATTRIBUTE' AND column_name = 'IS_MULTIVALUED') THEN
			ALTER TABLE COMPANY_ATTRIBUTE DROP COLUMN IS_MULTIVALUED;
 		END IF;
	END$$
DELIMITER ;

call MODIFY_ORGANIZATION_ATTRIBUTES();
DROP PROCEDURE MODIFY_ORGANIZATION_ATTRIBUTES;

ALTER TABLE COMPANY_ATTRIBUTE ADD COLUMN IS_MULTIVALUED char(1) NOT NULL DEFAULT 'N';

DROP TABLE IF EXISTS COMPANY_ATTRIBUTE_VALUES;

CREATE TABLE COMPANY_ATTRIBUTE_VALUES (
  COMPANY_ATTRIBUTE_ID varchar(32) NOT NULL,
  VALUE varchar(255),
  CONSTRAINT COMPANY_ATTRIBUTE_VALUES_FK FOREIGN KEY (COMPANY_ATTRIBUTE_ID) REFERENCES COMPANY_ATTRIBUTE(COMPANY_ATTR_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;