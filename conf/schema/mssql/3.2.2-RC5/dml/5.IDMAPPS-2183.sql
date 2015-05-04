use openiam;

DELETE FROM POLICY_ATTRIBUTE  WHERE DEF_PARAM_ID IN ('185');
DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID  IN ('185');

INSERT INTO POLICY_DEF_PARAM (DEF_PARAM_ID, POLICY_DEF_ID, NAME, DESCRIPTION, OPERATION, VALUE1, VALUE2, REPEATS, PARAM_GROUP, HANDLER_LANGUAGE, POLICY_PARAM_HANDLER) VALUES ('185', '100', 'REJECT_WORDS_IN_PSWD', 'Words not allowed in a password', 'boolean', 'false', '', 0, 'PSWD_COMPOSITION', null, 'org.openiam.idm.srvc.pswd.rule.RejectWordsRule');
INSERT INTO POLICY_ATTRIBUTE (POLICY_ATTR_ID, DEF_PARAM_ID, POLICY_ID, VALUE1, VALUE2, RULE_TEXT, REQUIRED) VALUES ('4202', '185', '4000', 'false', '', '', 'Y');
