use openiam;

UPDATE METADATA_TYPE SET GROUPING=NULL WHERE GROUPING NOT IN(
	'OBJECT_TYPE',
	'USER_TYPE',
	'OPERATION',
	'PHONE',
	'UI_WIDGET',
	'USER',
	'USER_2ND_STATUS',
	'ADDRESS',
	'EMAIL',
	'AUTH_LEVEL',
	'JOB_CODE',
	'SERVICE_STATUS',
	'GROUP_TYPE',
	'ROLE_TYPE',
	'ORG_TYPE',
	'RESOURCE_TYPE'
);