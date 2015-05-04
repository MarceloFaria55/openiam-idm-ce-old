use openiam;

DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN ('SELF_USERIDENTITY', 'SELF_LOGIN_LIST', 'SELF_LOGIN_NEW', 'SELF_LOGIN_LIST', 'SELF_LOGIN_ROOT', 'SELFSER_USER_LOGIN', 'SELFSER_USER_NEW_LOGIN');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN ('SELF_USERIDENTITY', 'SELF_LOGIN_LIST', 'SELF_LOGIN_NEW', 'SELF_LOGIN_LIST', 'SELF_LOGIN_ROOT', 'SELFSER_USER_LOGIN', 'SELFSER_USER_NEW_LOGIN');
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN ('SELF_USERIDENTITY', 'SELF_LOGIN_LIST', 'SELF_LOGIN_NEW', 'SELF_LOGIN_LIST', 'SELF_LOGIN_ROOT', 'SELFSER_USER_LOGIN', 'SELFSER_USER_NEW_LOGIN');
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN ('SELF_USERIDENTITY', 'SELF_LOGIN_LIST', 'SELF_LOGIN_NEW', 'SELF_LOGIN_LIST', 'SELF_LOGIN_ROOT', 'SELFSER_USER_LOGIN', 'SELFSER_USER_NEW_LOGIN');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN ('SELF_USERIDENTITY', 'SELF_LOGIN_LIST', 'SELF_LOGIN_NEW', 'SELF_LOGIN_LIST', 'SELF_LOGIN_ROOT', 'SELFSER_USER_LOGIN', 'SELFSER_USER_NEW_LOGIN');
DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN ('SELF_USERIDENTITY', 'SELF_LOGIN_LIST', 'SELF_LOGIN_NEW', 'SELF_LOGIN_LIST', 'SELF_LOGIN_ROOT', 'SELFSER_USER_LOGIN', 'SELFSER_USER_NEW_LOGIN');
DELETE FROM RES WHERE RESOURCE_ID IN ('SELF_USERIDENTITY', 'SELF_LOGIN_LIST', 'SELF_LOGIN_NEW', 'SELF_LOGIN_LIST', 'SELF_LOGIN_ROOT', 'SELFSER_USER_LOGIN', 'SELFSER_USER_NEW_LOGIN');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, URL) VALUES ('SELFSER_USER_LOGIN', 'MENU_ITEM', 'Identities', 'SELFSER_USER_LOGIN', '/selfservice/userIdenties.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSER_USER_LOGIN_PUB', 'SELFSER_USER_LOGIN', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSER_USER_LOGIN_DESC', 'SELFSER_USER_LOGIN', 'MENU_DISPLAY_NAME', 'Identities');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, URL) VALUES ('SELFSER_USER_NEW_LOGIN', 'MENU_ITEM', 'Create New Identity', 'SELFSER_USER_NEW_LOGIN', '/selfservice/identity.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSER_USER_NEW_LOGIN_PUB', 'SELFSER_USER_NEW_LOGIN', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSER_USER_NEW_LOGIN_DESC', 'SELFSER_USER_NEW_LOGIN', 'MENU_DISPLAY_NAME', 'Create New Identity');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SELFSERV_USER_EDIT_ROOT', 'SELFSER_USER_LOGIN');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SELFSERV_USER_EDIT_ROOT', 'SELFSER_USER_NEW_LOGIN');