use openiam;

ALTER TABLE ROLE DROP COLUMN INTERNAL_ROLE_ID;

ALTER TABLE ROLE DROP COLUMN TYPE_ID;

ALTER TABLE ROLE DROP COLUMN OWNER_ID;

ALTER TABLE ROLE ADD COLUMN (MANAGED_SYS_ID VARCHAR(32) NULL);

ALTER TABLE ROLE ADD CONSTRAINT ROLE_MNG_SYS_FK FOREIGN KEY (MANAGED_SYS_ID ) REFERENCES MANAGED_SYS (MANAGED_SYS_ID );