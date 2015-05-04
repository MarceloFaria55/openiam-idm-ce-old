﻿use openiam;

IF NOT EXISTS (SELECT * FROM RES WHERE RESOURCE_ID = 'EMPLOYEE_CERT_REPORT_105') 
BEGIN
	INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL, MIN_AUTH_LEVEL, IS_PUBLIC,
	  		ADMIN_RESOURCE_ID, RISK, TYPE_ID, COORELATED_NAME) VALUES
		('EMPLOYEE_CERT_REPORT_105', 'REPORT', NULL, 'EMPLOYEE_CERT_REPORT_105', NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'EMPLOYEE_CERT_REPORT');
END;

IF NOT EXISTS (SELECT * FROM REPORT_INFO WHERE REPORT_INFO_ID = '105') 
BEGIN
	INSERT INTO REPORT_INFO (REPORT_INFO_ID, REPORT_NAME, DATASOURCE_FILE_PATH, REPORT_FILE_PATH, BUILT_IN, RESOURCE_ID) VALUES
		('105', 'EMPLOYEE_CERT_REPORT', 'EmployeeCertReport.groovy', 'EmployeeCertReport.rptdesign', 'Y', 'EMPLOYEE_CERT_REPORT_105');
END;

IF NOT EXISTS (SELECT * FROM REPORT_CRITERIA_PARAMETER WHERE RCP_ID IN ('1051','1052','1053','1054')) 
BEGIN
	INSERT INTO REPORT_CRITERIA_PARAMETER (RCP_ID, REPORT_INFO_ID, PARAM_NAME, PARAM_VALUE, RCPT_ID, PARAM_META_TYPE_ID, 
			IS_MULTIPLE, IS_REQUIRED, CAPTION) VALUES
		('1051', '105', 'MANAGER_ID', NULL, '1', 'USER', 'N', 'N', 'MANAGER_ID'),
		('1052', '105', 'EMPLOYEE_ID', NULL, '1', 'USER', 'N', 'N', 'EMPLOYEE_ID'),
		('1053', '105', 'PERIOD_START', NULL, '2', NULL, 'N', 'Y', 'PERIOD_START'),
		('1054', '105', 'PERIOD_END', NULL, '2', NULL, 'N', 'N', 'PERIOD_END');
END;
