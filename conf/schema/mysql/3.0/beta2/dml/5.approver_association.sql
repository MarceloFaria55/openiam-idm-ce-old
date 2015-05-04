use openiam;

DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');
DELETE FROM RES WHERE RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('RES_APROVER_ASSOC', 'MENU_ITEM', 'RES_APROVER_ASSOC', 'Approver Associations', '/webconsole-idm/provisioning/resourceApproverAssociations.html');
INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('GRP_APROVER_ASSOC', 'MENU_ITEM', 'GRP_APROVER_ASSOC', 'Approver Associations', '/webconsole-idm/provisioning/groupApproverAssociations.html');
INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('ROLE_APROVER_ASSOC', 'MENU_ITEM', 'ROLE_APROVER_ASSOC', 'Approver Associations', '/webconsole-idm/provisioning/roleApproverAssociations.html');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('RES_APROVER_ASSOC_DN', 'RES_APROVER_ASSOC', 'MENU_DISPLAY_NAME', 'Approver Associations');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('RES_APROVER_ASSOC_PUB', 'RES_APROVER_ASSOC', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('GRP_APROVER_ASSOC_DN', 'GRP_APROVER_ASSOC', 'MENU_DISPLAY_NAME', 'Approver Associations');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('GRP_APROVER_ASSOC_PUB', 'GRP_APROVER_ASSOC', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ROLE_APROVER_ASSOC_DN', 'ROLE_APROVER_ASSOC', 'MENU_DISPLAY_NAME', 'Approver Associations');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ROLE_APROVER_ASSOC_PUB', 'ROLE_APROVER_ASSOC', 'MENU_IS_PUBLIC', 'true');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('RESOURCE_EDIT_PAGE_ROOT', 'RES_APROVER_ASSOC');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('GROUP_EDIT_MENU', 'GRP_APROVER_ASSOC');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('ROLE_EDIT_MENU', 'ROLE_APROVER_ASSOC');

UPDATE APPROVER_ASSOC SET ASSOCIATION_ENTITY_ID='254', ASSOCIATION_TYPE='RESOURCE' WHERE REQUEST_TYPE='254';