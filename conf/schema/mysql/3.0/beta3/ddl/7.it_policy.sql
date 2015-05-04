use openiam;

ALTER TABLE USERS ADD DATE_IT_POLICY_APPROVED TIMESTAMP NULL;

CREATE  TABLE IT_POLICY (
  IT_POLICY_ID VARCHAR(32) NOT NULL,
  APPROVE_TYPE VARCHAR(64) NOT NULL DEFAULT 'Once',
  ACTIVE CHAR(1) NOT NULL DEFAULT 'N',
  CREATE_DATE TIMESTAMP NULL,
  UPDATE_DATE TIMESTAMP NULL,
  CREATED_BY varchar(32) NULL,
  UPDATED_BY varchar(32) NULL,
  POLICY_CONTENT LONGTEXT NULL,
  CONFIRMATION varchar(255) NULL,
  PRIMARY KEY (IT_POLICY_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;