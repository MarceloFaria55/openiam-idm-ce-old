use openiam;
ALTER TABLE USERS ALTER COLUMN TYPE_ID NVARCHAR(32) NULL;
ALTER TABLE USERS ADD DEFAULT NULL FOR TYPE_ID;
ALTER TABLE USERS ADD CONSTRAINT USER_TYPE_FK FOREIGN KEY (TYPE_ID) REFERENCES METADATA_TYPE (TYPE_ID);