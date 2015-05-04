use openiam;

ALTER TABLE USER_IDENTITY_ANS DROP FOREIGN KEY FK_USER_IDENTITY_ANS_IDENTITY_QUESTION;
ALTER TABLE USER_IDENTITY_ANS MODIFY COLUMN IDENTITY_QUESTION_ID VARCHAR(32) NOT NULL;
ALTER TABLE USER_IDENTITY_ANS ADD CONSTRAINT FK_USER_IDENTITY_ANS_IDENTITY_QUESTION FOREIGN KEY (IDENTITY_QUESTION_ID)  REFERENCES IDENTITY_QUESTION(IDENTITY_QUESTION_ID);
ALTER TABLE USER_IDENTITY_ANS DROP COLUMN QUESTION_TEXT;