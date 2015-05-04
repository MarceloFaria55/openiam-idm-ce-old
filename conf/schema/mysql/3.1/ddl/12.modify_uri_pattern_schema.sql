use openiam;

DROP TABLE IF EXISTS AUTH_LEVEL_ATTRIBUTE;

CREATE TABLE AUTH_LEVEL_ATTRIBUTE(
	AUTH_LEVEL_ATTRIBUTE_ID VARCHAR(32) NOT NULL,
	AUTH_LEVEL_GROUPING_ID VARCHAR(32) NOT NULL,
	TYPE_ID VARCHAR(32) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	VALUE_AS_BYTE_ARRAY BLOB NULL,
	VALUE_AS_STRING VARCHAR(32) NULL,
	PRIMARY KEY(AUTH_LEVEL_ATTRIBUTE_ID),
	CONSTRAINT AUTH_LEVEL_ATTR_GRP_FK FOREIGN KEY (AUTH_LEVEL_GROUPING_ID) REFERENCES AUTH_LEVEL_GROUPING(AUTH_LEVEL_GROUPING_ID),
	CONSTRAINT AUTH_LEVEL_ATTR_TYPE_FK FOREIGN KEY (TYPE_ID) REFERENCES METADATA_TYPE(TYPE_ID)
)ENGINE=InnoDB;


DELIMITER $$

DROP PROCEDURE IF EXISTS ADD_BINARY_FLAG$$

CREATE PROCEDURE ADD_BINARY_FLAG()
	BEGIN
		IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_schema='openiam' AND table_name = 'METADATA_TYPE' AND column_name = 'IS_BINARY') THEN
			ALTER TABLE METADATA_TYPE ADD COLUMN IS_BINARY CHAR(1) DEFAULT 'N' NOT NULL;
 		END IF;
 		
	END$$
DELIMITER ;

call ADD_BINARY_FLAG();
DROP PROCEDURE ADD_BINARY_FLAG;

DELETE FROM METADATA_TYPE WHERE GROUPING IN('AUTH_LEVEL');

INSERT INTO METADATA_TYPE (TYPE_ID, DESCRIPTION, ACTIVE, GROUPING, IS_BINARY) VALUES('KERBEROS_SERVICE_NAME', 'Kerberos Service Name', 'Y', 'AUTH_LEVEL', 'N');
INSERT INTO METADATA_TYPE (TYPE_ID, DESCRIPTION, ACTIVE, GROUPING, IS_BINARY) VALUES('KERBEROS_KEYTAB_FILE', 'Kerberos Keytab File', 'Y', 'AUTH_LEVEL', 'Y');