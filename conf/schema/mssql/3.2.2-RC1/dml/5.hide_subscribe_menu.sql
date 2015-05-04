use openiam;

DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN (
	'SELF_VIEW_REPORT_ROOT', 'VIEW', 'SELF_SUB_REPORT_NEW', 'SELF_SUB_REPORT_ROOT', 'SELF_VIEW_REPORT_NEW', 'SUBSCRIBE', 'SELF_REPORT_VIEWER');
DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN (
	'SELF_VIEW_REPORT_ROOT', 'VIEW', 'SELF_SUB_REPORT_NEW', 'SELF_SUB_REPORT_ROOT', 'SELF_VIEW_REPORT_NEW', 'SUBSCRIBE', 'SELF_REPORT_VIEWER');
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN (
	'SELF_VIEW_REPORT_ROOT', 'VIEW', 'SELF_SUB_REPORT_NEW', 'SELF_SUB_REPORT_ROOT', 'SELF_VIEW_REPORT_NEW', 'SUBSCRIBE', 'SELF_REPORT_VIEWER');

UPDATE RES set IS_PUBLIC = 'N' WHERE RESOURCE_ID IN (
	'SELF_VIEW_REPORT_ROOT', 'VIEW', 'SELF_SUB_REPORT_NEW', 'SELF_SUB_REPORT_ROOT', 'SELF_VIEW_REPORT_NEW', 'SUBSCRIBE', 'SELF_REPORT_VIEWER', 'SELFSERVICE_REPORT');

UPDATE RES set URL = '/selfservice/report.html' WHERE RESOURCE_ID = 'SELFSERVICE_REPORT';