use openiam;

ALTER TABLE RES ADD COLUMN MIN_AUTH_LEVEL VARCHAR(32);

ALTER TABLE RES ADD COLUMN DOMAIN VARCHAR(64);

ALTER TABLE RES ADD COLUMN IS_PUBLIC CHAR(1) DEFAULT 'Y';

ALTER TABLE RES ADD COLUMN IS_SSL CHAR(1) DEFAULT 'N';