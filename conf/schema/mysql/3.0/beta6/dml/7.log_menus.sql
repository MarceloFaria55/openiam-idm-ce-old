use openiam;

DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN ('SYNCLOG');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN ('SYNCLOG');
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN ('SYNCLOG');
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN ('SYNCLOG');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN ('SYNCLOG');
DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN ('SYNCLOG');
DELETE FROM RES WHERE RESOURCE_ID IN ('SYNCLOG');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL) VALUES ('SYNCLOG', 'MENU_ITEM', 'Log Viewer', 'SYNCLOG', 1, '/webconsole/viewAuditLog.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCLOG_ADMIN_DESC', 'SYNCLOG', 'MENU_DISPLAY_NAME', 'Log Viewer');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCLOG_ADMIN_PUB', 'SYNCLOG', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (MEMBER_RESOURCE_ID, RESOURCE_ID) VALUES ('SYNCLOG', 'ADMIN');