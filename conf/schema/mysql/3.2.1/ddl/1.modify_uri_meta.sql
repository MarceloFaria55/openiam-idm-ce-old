use openiam;

ALTER TABLE URI_PATTERN_META_VALUE ADD COLUMN PROPAGETE_THROUGH_PROXY CHAR(1) NOT NULL DEFAULT 'Y';