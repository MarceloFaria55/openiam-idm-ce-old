use openiam;

UPDATE RES SET URL='/webconsole/organizations.html' WHERE RESOURCE_ID='ORG';
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_MENU_PUBLIC', 'ORG', 'MENU_IS_PUBLIC', 'true');

/* org root menus */
INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('ORGANIZATION_ROOT_ID', 'MENU_ITEM', 'ORGANIZATION_ROOT_ID', 'Organization Root Menus','/webconsole/organizations.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORGANIZATION_ROOT_ID_PUB', 'ORGANIZATION_ROOT_ID', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORGANIZATION_ROOT_ID_DESC', 'ORGANIZATION_ROOT_ID', 'MENU_DISPLAY_NAME', 'Organization Root Menus');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('ORG_SEARCH', 'MENU_ITEM', 'ORG_SEARCH', 'Organization Search','/webconsole/organizations.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_SEARCH_PUB', 'ORG_SEARCH', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_SEARCH_DESC', 'ORG_SEARCH', 'MENU_DISPLAY_NAME', 'Organization Search');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('NEW_ORG', 'MENU_ITEM', 'NEW_ORG', 'New Organization','/webconsole/editOrganization.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_ORG_PUB', 'NEW_ORG', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_ORG_DESC', 'NEW_ORG', 'MENU_DISPLAY_NAME', 'Create New Organization');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ORGANIZATION_ROOT_ID', 'ORG_SEARCH');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ORGANIZATION_ROOT_ID', 'NEW_ORG');


/* org edit menus */
INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('ORGANIZATION_EDIT_ID', 'MENU_ITEM', 'ORGANIZATION_EDIT_ID', 'Organization Edit Menus');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORGANIZATION_EDIT_ID_PUB', 'ORGANIZATION_EDIT_ID', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORGANIZATION_EDIT_ID_DESC', 'ORGANIZATION_EDIT_ID', 'MENU_DISPLAY_NAME', 'Organization Edit Menus');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('EDIT_ORG', 'MENU_ITEM', 'EDIT_ORG', 'Edit Organization', '/webconsole/editOrganization.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('EDIT_ORG_PUB', 'EDIT_ORG', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('EDIT_ORG_DESC', 'EDIT_ORG', 'MENU_DISPLAY_NAME', 'Edit Organization');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('ORG_ATTRIBUTES', 'MENU_ITEM', 'ORG_ATTRIBUTES', 'Organization Attributes','/webconsole/organizationAttributes.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_ATTRIBUTES_PUB', 'ORG_ATTRIBUTES', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_ATTRIBUTES_DESC', 'ORG_ATTRIBUTES', 'MENU_DISPLAY_NAME', 'Organization Attributes');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('ORG_MEMBERSHIP', 'MENU_ITEM', 'ORG_MEMBERSHIP', 'Organization Membership','/webconsole/organizationMembership.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_MEMBERSHIP_PUB', 'ORG_MEMBERSHIP', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_MEMBERSHIP_DESC', 'ORG_MEMBERSHIP', 'MENU_DISPLAY_NAME', 'Organization Membership');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ORGANIZATION_EDIT_ID', 'EDIT_ORG');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ORGANIZATION_EDIT_ID', 'ORG_ATTRIBUTES');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ORGANIZATION_EDIT_ID', 'ORG_MEMBERSHIP');