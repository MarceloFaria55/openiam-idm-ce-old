use openiam;

DELETE FROM LANGUAGE_MAPPING WHERE REFERENCE_TYPE ='OrganizationTypeEntity';

DELIMITER $$

DROP PROCEDURE IF EXISTS migrateOrgTypes$$

CREATE PROCEDURE migrateOrgTypes()
	BEGIN
		DECLARE done INT DEFAULT FALSE;
		DECLARE _id VARCHAR(32);
		DECLARE _value VARCHAR(100);
		DECLARE cur1 CURSOR FOR (
			SELECT ORG_TYPE_ID, NAME FROM ORGANIZATION_TYPE
		);
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		OPEN cur1;
			
		REPEAT 
			FETCH cur1 INTO _id, _value;
			IF (_id IS NOT NULL) THEN
				IF (_value IS NOT NULL) THEN
					IF ((SELECT count(*) FROM LANGUAGE_MAPPING WHERE REFERENCE_ID=_id AND REFERENCE_TYPE='OrganizationTypeEntity')= 0) THEN
						INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES(_id, '1', 'OrganizationTypeEntity', _id, _value);
					END IF;
				END IF;
			END IF;
		UNTIL done END REPEAT;
		CLOSE cur1;
	END$$
DELIMITER ;

call migrateOrgTypes();

DROP PROCEDURE migrateOrgTypes;