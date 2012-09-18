ALTER TABLE POLICY
  change RULE RULE_TEXT TEXT ;

ALTER TABLE POLICY_ATTRIBUTE
  change RULE RULE_TEXT TEXT ;

ALTER TABLE ATTRIBUTE_MAP
  change RULE RULE_TEXT TEXT ;



alter table RES
ADD COLUMN RES_OWNER_GROUP_ID   VARCHAR(32) NULL,
ADD COLUMN RES_OWNER_USER_ID    VARCHAR(32) NULL;


DROP TABLE RESOURCE_PRIVILEGE;
DROP TABLE PRIVILEGE_DEF ;


CREATE  TABLE RESOURCE_PRIVILEGE (
  RESOURCE_PRIVLEGE_ID VARCHAR(32) NOT NULL,
  RESOURCE_ID     VARCHAR(32)   NULL,
  PRIVILEGE_NAME  VARCHAR(32)   NULL,
  PRIVILEGE_TYPE  VARCHAR(20)   NULL, /* VALUE LIKE ROLE, GROUP, MODULE NAME */
  DESCRIPTION     VARCHAR(40)   NULL,
  PRIMARY KEY (RESOURCE_PRIVLEGE_ID),
  CONSTRAINT FK_RES_PRIVILEGE_RES
    FOREIGN KEY (RESOURCE_ID )
    REFERENCES RES (RESOURCE_ID )
 )ENGINE = InnoDB;

insert into MENU (menu_id, menu_group, menu_name,menu_desc,url,LANGUAGE_CD, DISPLAY_ORDER) values('RESENTITLEMENT','SECURITY_RES','Entitlement','Entitlement','resourceEntitlement.cnt', 'en',5);
INSERT INTO PERMISSIONS(MENU_ID,ROLE_ID,SERVICE_ID) VALUES('RESENTITLEMENT','SUPER_SEC_ADMIN','IDM');


alter table LOGIN
  ADD COLUMN PSWD_RESET_TOKEN     VARCHAR(80) NULL,
  ADD COLUMN PSWD_RESET_TOKEN_EXP DATETIME NULL;
