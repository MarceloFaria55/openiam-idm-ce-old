use openiam;
ALTER TABLE SYNCH_CONFIG ALTER COLUMN CONNECTION_URL NVARCHAR(500) NULL;
ALTER TABLE SYNCH_CONFIG ADD DEFAULT NULL FOR CONNECTION_URL