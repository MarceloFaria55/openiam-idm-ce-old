use openiam;


DELETE FROM LANGUAGE_MAPPING WHERE REFERENCE_ID = 'MNGSYSRULES';

DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID = 'MNGSYSRULES';

DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID = 'MNGSYSRULES';

DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID = 'MNGSYSRULES';

DELETE FROM RES WHERE RESOURCE_ID = 'MNGSYSRULES';