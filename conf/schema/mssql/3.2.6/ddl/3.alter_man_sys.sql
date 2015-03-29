use openiam;

ALTER TABLE MANAGED_SYS ADD SKIP_GROUP_PROV CHAR(1) NOT NULL DEFAULT 'Y';

GO
UPDATE MANAGED_SYS SET SKIP_GROUP_PROV = 'N' WHERE MANAGED_SYS_ID IN 
    (SELECT MANAGED_SYS_ID FROM MNG_SYS_OBJECT_MATCH WHERE OBJECT_TYPE = 'GROUP' AND SEARCH_FILTER IS NOT NULL);

