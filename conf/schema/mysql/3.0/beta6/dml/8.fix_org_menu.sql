USE openiam;

DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN ('SELFSRVS_ACCESS_MNGMNT', 'SELFSRVS_ACCESS_MNGMNT_ORG');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN ('SELFSRVS_ACCESS_MNGMNT', 'SELFSRVS_ACCESS_MNGMNT_ORG');
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN ('SELFSRVS_ACCESS_MNGMNT');
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN ('SELFSRVS_ACCESS_MNGMNT');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN ('SELFSRVS_ACCESS_MNGMNT');
DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN ('SELFSRVS_ACCESS_MNGMNT');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('SELFSRVS_ACCESS_MNGMNT');
DELETE FROM RES WHERE RESOURCE_ID IN ('SELFSRVS_ACCESS_MNGMNT');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ACCESSCENTER', 'SELFSRVS_ACCESS_MNGMNT_ORG');