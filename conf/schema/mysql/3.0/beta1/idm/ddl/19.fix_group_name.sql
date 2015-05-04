use openiam;

DELETE FROM GRP_ATTRIBUTES WHERE GRP_ID IN( SELECT GRP_ID FROM GRP WHERE GRP_NAME IS NULL);
DELETE FROM GRP_ROLE WHERE GRP_ID IN( SELECT GRP_ID FROM GRP WHERE GRP_NAME IS NULL);
DELETE FROM grp_to_grp_membership WHERE GROUP_ID IN( SELECT GRP_ID FROM GRP WHERE GRP_NAME IS NULL);
DELETE FROM grp_to_grp_membership WHERE MEMBER_GROUP_ID IN( SELECT GRP_ID FROM GRP WHERE GRP_NAME IS NULL);
DELETE FROM RESOURCE_GROUP WHERE GRP_ID IN( SELECT GRP_ID FROM GRP WHERE GRP_NAME IS NULL);
DELETE FROM USER_GRP WHERE GRP_ID IN( SELECT GRP_ID FROM GRP WHERE GRP_NAME IS NULL);
ALTER TABLE GRP MODIFY COLUMN GRP_NAME VARCHAR(80) NOT NULL;

ALTER TABLE USER_GRP ADD CONSTRAINT USER_GRP_UNIQUE_RECORD UNIQUE (USER_ID, GRP_ID);