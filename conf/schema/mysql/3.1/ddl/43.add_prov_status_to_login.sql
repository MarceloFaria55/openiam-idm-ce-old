use openiam;

DELIMITER $$

DROP PROCEDURE IF EXISTS ADD_PROV_STATUS$$

CREATE PROCEDURE ADD_PROV_STATUS()
	BEGIN
		IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_schema='openiam' AND table_name = 'LOGIN' AND column_name = 'PROV_STATUS') THEN
			ALTER TABLE LOGIN ADD COLUMN PROV_STATUS VARCHAR(20) NULL;
 		END IF;
 		
	END$$
DELIMITER ;

call ADD_PROV_STATUS();
DROP PROCEDURE ADD_PROV_STATUS;

UPDATE LOGIN SET STATUS = NULL WHERE STATUS NOT IN ('ACTIVE', 'INACTIVE');