use openiam;

ALTER TABLE GRP ALTER COLUMN GROUP_DESC VARCHAR(512);
ALTER TABLE GRP ADD DEFAULT 'NULL' FOR GROUP_DESC;