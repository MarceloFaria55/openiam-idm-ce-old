use openiam;
ALTER TABLE RECONCILIATION_CONFIG ADD PRE_PROCESSOR NVARCHAR(255) NULL DEFAULT NULL; 
ALTER TABLE RECONCILIATION_CONFIG ADD POST_PROCESSOR NVARCHAR(255) NULL DEFAULT NULL; 
		