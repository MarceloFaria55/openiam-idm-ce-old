use openiam;

ALTER TABLE LOGIN_ATTRIBUTE DROP FOREIGN KEY FK_LOGIN_LOGIN_ATTRIBUTE;

ALTER TABLE LOGIN_ATTRIBUTE DROP INDEX FK_LOGIN_LOGIN_ATTRIBUTE;

ALTER TABLE LOGIN DROP FOREIGN KEY FK_LOGIN_USERS;

ALTER TABLE LOGIN DROP FOREIGN KEY FK_LOGIN_SERVICE;

ALTER TABLE LOGIN DROP PRIMARY KEY;

ALTER TABLE LOGIN ADD COLUMN LOGIN_ID VARCHAR(32);

ALTER TABLE LOGIN_ATTRIBUTE ADD COLUMN LOGIN_ID VARCHAR(32);

ALTER TABLE PWD_HISTORY ADD COLUMN LOGIN_ID VARCHAR(32);

DELIMITER $$

DROP PROCEDURE IF EXISTS GENERATE_SIMPLE_LOGIN_ID$$

CREATE PROCEDURE GENERATE_SIMPLE_LOGIN_ID()
	BEGIN
		DECLARE done INT DEFAULT FALSE;
		DECLARE srvId VARCHAR(20);
		DECLARE lgn VARCHAR(320);
		DECLARE mgSysId VARCHAR(32);
		DECLARE lgnId VARCHAR(32);
		DECLARE newId INT DEFAULT 1;
		DECLARE cur1 CURSOR FOR (SELECT LOGIN, MANAGED_SYS_ID, SERVICE_ID, LOGIN_ID FROM LOGIN);
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		OPEN cur1;
		
		REPEAT 
			FETCH cur1 INTO lgn, mgSysId, srvId, lgnId;
			IF (lgnId IS NULL) THEN
				UPDATE LOGIN SET LOGIN_ID=newId WHERE SERVICE_ID=srvId AND MANAGED_SYS_ID=mgSysId AND LOGIN=lgn;
				UPDATE LOGIN_ATTRIBUTE SET LOGIN_ID=newId WHERE SERVICE_ID=srvId AND MANAGED_SYS_ID=mgSysId AND LOGIN=lgn;
				UPDATE PWD_HISTORY SET LOGIN_ID=newId WHERE SERVICE_ID=srvId AND MANAGED_SYS_ID=mgSysId AND LOGIN=lgn;
				SET newId = newId + 1;
			END IF;
		UNTIL done END REPEAT; 
				
		
		CLOSE cur1;
	END$$
DELIMITER ;

call GENERATE_SIMPLE_LOGIN_ID();

DROP PROCEDURE GENERATE_SIMPLE_LOGIN_ID;

ALTER TABLE PWD_HISTORY DROP COLUMN LOGIN;

ALTER TABLE PWD_HISTORY DROP COLUMN SERVICE_ID;

ALTER TABLE PWD_HISTORY DROP COLUMN MANAGED_SYS_ID;

ALTER TABLE LOGIN_ATTRIBUTE DROP COLUMN LOGIN;

ALTER TABLE LOGIN_ATTRIBUTE DROP COLUMN SERVICE_ID;

ALTER TABLE LOGIN_ATTRIBUTE DROP COLUMN MANAGED_SYS_ID;

ALTER TABLE LOGIN ADD PRIMARY KEY (LOGIN_ID);

ALTER TABLE LOGIN ADD CONSTRAINT FK_LOGIN_USERS FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID);

ALTER TABLE LOGIN ADD CONSTRAINT FK_LOGIN_SERVICE FOREIGN KEY (SERVICE_ID) REFERENCES SECURITY_DOMAIN(DOMAIN_ID);

ALTER TABLE LOGIN_ATTRIBUTE MODIFY COLUMN LOGIN_ID VARCHAR(32) NOT NULL;
ALTER TABLE LOGIN_ATTRIBUTE ADD CONSTRAINT LOGIN_ID_LOGIN_ATTR_FK FOREIGN KEY (LOGIN_ID) REFERENCES LOGIN (LOGIN_ID);

ALTER TABLE PWD_HISTORY MODIFY COLUMN LOGIN_ID VARCHAR(32) NOT NULL;
ALTER TABLE PWD_HISTORY ADD CONSTRAINT LOGIN_ID_PWD_HIST_FK FOREIGN KEY (LOGIN_ID) REFERENCES LOGIN (LOGIN_ID);

ALTER TABLE LOGIN ADD CONSTRAINT UNIQUE_LOGIN UNIQUE (LOGIN, MANAGED_SYS_ID, SERVICE_ID);