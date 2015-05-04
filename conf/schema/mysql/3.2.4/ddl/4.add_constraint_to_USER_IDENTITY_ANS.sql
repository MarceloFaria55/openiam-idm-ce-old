use openiam;

DELIMITER $$

DROP PROCEDURE IF EXISTS DropDoubleQuestionAnswer$$

CREATE PROCEDURE DropDoubleQuestionAnswer()
	BEGIN
		DECLARE done INT DEFAULT FALSE;
		DECLARE u_id VARCHAR(32);
		DECLARE q_id VARCHAR(32);
		DECLARE cur1 CURSOR FOR (SELECT IDENTITY_QUESTION_ID, USER_ID FROM USER_IDENTITY_ANS);
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		OPEN cur1;
		
		REPEAT 
			FETCH cur1 INTO q_id, u_id;
			IF ((SELECT count(*) FROM USER_IDENTITY_ANS WHERE IDENTITY_QUESTION_ID=q_id AND USER_ID=u_id) > 1) THEN
				DELETE FROM USER_IDENTITY_ANS WHERE IDENTITY_QUESTION_ID=q_id AND USER_ID=u_id;
			END IF;
		UNTIL done END REPEAT; 
				
		
		CLOSE cur1;
	END$$
DELIMITER ;

call DropDoubleQuestionAnswer();

DROP PROCEDURE DropDoubleQuestionAnswer;

ALTER TABLE USER_IDENTITY_ANS ADD CONSTRAINT UNQ_ROW UNIQUE(IDENTITY_QUESTION_ID, USER_ID);