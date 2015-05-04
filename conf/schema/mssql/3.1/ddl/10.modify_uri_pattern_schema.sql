use openiam;

DELETE FROM URI_AUTH_LEVEL_GRP_XREF;
DELETE FROM CP_AUTH_LEVEL_GRP_XREF;



DECLARE @authLevelId NVARCHAR(32);
DECLARE @entityId NVARCHAR(32);
DECLARE cur1 CURSOR FOR (SELECT URI_PATTERN_ID, MIN_AUTH_LEVEL FROM URI_PATTERN);
OPEN cur1;

FETCH NEXT FROM cur1 INTO @entityId, @authLevelId;
WHILE @@FETCH_STATUS = 0
BEGIN
	IF (@entityId IS NOT NULL) 
	BEGIN
		IF (@authLevelId IS NOT NULL) 
		BEGIN
			IF ((SELECT count(*) FROM URI_AUTH_LEVEL_GRP_XREF WHERE URI_PATTERN_ID=@entityId AND AUTH_LEVEL_GROUPING_ID=@authLevelId)= 0)
			BEGIN
				INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES(@entityId, @authLevelId, 0);
			END;
		END;
	END;
END;
CLOSE cur1;



DECLARE @authLevelId_ NVARCHAR(32);
DECLARE @entityId_ NVARCHAR(32);
DECLARE cur2 CURSOR FOR (SELECT CONTENT_PROVIDER_ID, MIN_AUTH_LEVEL FROM CONTENT_PROVIDER);
OPEN cur2;

FETCH NEXT FROM cur2 INTO @entityId_, @authLevelId_;
WHILE @@FETCH_STATUS = 0
BEGIN
	IF (@entityId_ IS NOT NULL) 
	BEGIN
		IF (@authLevelId_ IS NOT NULL) 
		BEGIN
			IF ((SELECT count(*) FROM CP_AUTH_LEVEL_GRP_XREF WHERE CONTENT_PROVIDER_ID=@entityId_ AND AUTH_LEVEL_GROUPING_ID=@authLevelId_)= 0)
			BEGIN
				INSERT INTO CP_AUTH_LEVEL_GRP_XREF (CONTENT_PROVIDER_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES(@entityId_, @authLevelId_, 0);
			END;
		END;
	END;
END;
CLOSE cur2;
