ALTER TABLE SYNCH_CONFIG ADD (ATTRIBUTE_NAMES_LOOKUP VARCHAR2(120) NULL);
ALTER TABLE SYNCH_CONFIG ADD (SEARCH_SCOPE INTEGER DEFAULT 2 NOT NULL);
ALTER TABLE MANAGED_SYS ADD (SEARCH_SCOPE INTEGER DEFAULT 2 NOT NULL);
ALTER TABLE COMPANY MODIFY (DOMAIN_NAME VARCHAR(250));