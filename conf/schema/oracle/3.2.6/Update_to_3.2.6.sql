/********************** v 3.2.6 ***********************/
/********************** dml/1.user_pages_menus.sql *********************************************/

DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN ('USER_INFO_PAGE', 'RESET_ACCOUNT', 'RESET_CHALLENGE_RESPONSE', 'DEACTIVATE_USER', 'REMOVE_USER', 'ENABLE_USER', 'DISABLE_USER', 'ACTIVE_USER', 'USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP', 'USER_GROUPS_MEMBERSHIP', 'USER_RES_MEMBERSHIP', 'USER_ORG_MEMBERSHIP');
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN ('USER_INFO_PAGE', 'RESET_ACCOUNT', 'RESET_CHALLENGE_RESPONSE', 'DEACTIVATE_USER', 'REMOVE_USER', 'ENABLE_USER', 'DISABLE_USER', 'ACTIVE_USER', 'USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP', 'USER_GROUPS_MEMBERSHIP', 'USER_RES_MEMBERSHIP', 'USER_ORG_MEMBERSHIP');
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN ('USER_INFO_PAGE', 'RESET_ACCOUNT', 'RESET_CHALLENGE_RESPONSE', 'DEACTIVATE_USER', 'REMOVE_USER', 'ENABLE_USER', 'DISABLE_USER', 'ACTIVE_USER', 'USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP', 'USER_GROUPS_MEMBERSHIP', 'USER_RES_MEMBERSHIP', 'USER_ORG_MEMBERSHIP');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN ('USER_INFO_PAGE', 'RESET_ACCOUNT', 'RESET_CHALLENGE_RESPONSE', 'DEACTIVATE_USER', 'REMOVE_USER', 'ENABLE_USER', 'DISABLE_USER', 'ACTIVE_USER', 'USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP', 'USER_GROUPS_MEMBERSHIP', 'USER_RES_MEMBERSHIP', 'USER_ORG_MEMBERSHIP');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN ('USER_INFO_PAGE', 'RESET_ACCOUNT', 'RESET_CHALLENGE_RESPONSE', 'DEACTIVATE_USER', 'REMOVE_USER', 'ENABLE_USER', 'DISABLE_USER', 'ACTIVE_USER', 'USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP', 'USER_GROUPS_MEMBERSHIP', 'USER_RES_MEMBERSHIP', 'USER_ORG_MEMBERSHIP');
DELETE FROM LANGUAGE_MAPPING WHERE REFERENCE_ID IN ('USER_INFO_PAGE', 'RESET_ACCOUNT', 'RESET_CHALLENGE_RESPONSE', 'DEACTIVATE_USER', 'REMOVE_USER', 'ENABLE_USER', 'DISABLE_USER', 'ACTIVE_USER', 'USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP', 'USER_GROUPS_MEMBERSHIP', 'USER_RES_MEMBERSHIP', 'USER_ORG_MEMBERSHIP');
DELETE FROM RES WHERE RESOURCE_ID IN ('USER_INFO_PAGE', 'RESET_ACCOUNT', 'RESET_CHALLENGE_RESPONSE', 'DEACTIVATE_USER', 'REMOVE_USER', 'ENABLE_USER', 'DISABLE_USER', 'ACTIVE_USER', 'USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP', 'USER_GROUPS_MEMBERSHIP', 'USER_RES_MEMBERSHIP', 'USER_ORG_MEMBERSHIP');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('USER_INFO_PAGE', 'MENU_ITEM', 'USER_INFO_PAGE', 'User Info Page', 1, 'Y', null);
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('RESET_ACCOUNT', 'MENU_ITEM', 'RESET_ACCOUNT', 'Reset Account Button', 1, 'Y', '/webconsole/rest/api/prov/resetUser');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('RESET_CHALLENGE_RESPONSE', 'MENU_ITEM', 'RESET_CHALLENGE_RESPONSE', 'Reset Challenge Response Button', 2, 'Y', '/webconsole/resetSecurityQuestions.html');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('DEACTIVATE_USER', 'MENU_ITEM', 'DEACTIVATE_USER', 'DeActivate User Button', 3, 'Y', '/webconsole/rest/api/prov/deleteUser');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('REMOVE_USER', 'MENU_ITEM', 'REMOVE_USER', 'Remove User Button', 4, 'Y', '/webconsole/rest/api/prov/removeUser');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('ENABLE_USER', 'MENU_ITEM', 'ENABLE_USER', 'Enable User Button', 5, 'Y', '/webconsole/rest/api/prov/enableUser');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('DISABLE_USER', 'MENU_ITEM', 'DISABLE_USER', 'Disable User Button', 6, 'Y', '/webconsole/rest/api/prov/disableUser');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('ACTIVE_USER', 'MENU_ITEM', 'ACTIVE_USER', 'Active User Button', 7, 'Y', '/webconsole/rest/api/prov/activateUser');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('USER_ENTITLEMENTS_PAGE', 'MENU_ITEM', 'USER_ENTITLEMENTS_PAGE', 'User Entitlements Page', 1, 'Y', null);
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('USER_ROLES_MEMBERSHIP', 'MENU_ITEM', 'USER_ROLES_MEMBERSHIP', 'Member of Roles Button', 1, 'Y', '/webconsole/userEntitlementsRoles.html');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('USER_GROUPS_MEMBERSHIP', 'MENU_ITEM', 'USER_GROUPS_MEMBERSHIP', 'Member of Groups Button', 2, 'Y', '/webconsole/userEntitlementsGroups.html');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('USER_RES_MEMBERSHIP', 'MENU_ITEM', 'USER_RES_MEMBERSHIP', 'Entitled to Resources Button', 3, 'Y', '/webconsole/userEntitlementsResources.html');
  INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, DISPLAY_ORDER, IS_PUBLIC, URL) VALUES
  ('USER_ORG_MEMBERSHIP', 'MENU_ITEM', 'USER_ORG_MEMBERSHIP', 'Member of Organizations Button', 4, 'Y', '/webconsole/userEntitlementsOrganizations.html');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('USER_INFO_PAGE_VIS', 'USER_INFO_PAGE', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('RESET_ACCOUNT_VIS', 'RESET_ACCOUNT' , 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('RESET_CHALLENGE_RESPONSE_VIS', 'RESET_CHALLENGE_RESPONSE', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('DEACTIVATE_USER_VIS', 'DEACTIVATE_USER', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('REMOVE_USER_VIS', 'REMOVE_USER', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('ENABLE_USER_VIS', 'ENABLE_USER', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('DISABLE_USER_VIS', 'DISABLE_USER', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('ACTIVE_USER_VIS', 'ACTIVE_USER', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('USER_ENTITLEMENTS_PAGE_VIS', 'USER_ENTITLEMENTS_PAGE', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('USER_ROLES_MEMBERSHIP_VIS', 'USER_ROLES_MEMBERSHIP', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('USER_GROUPS_MEMBERSHIP_VIS', 'USER_GROUPS_MEMBERSHIP', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('USER_RES_MEMBERSHIP_VIS', 'USER_RES_MEMBERSHIP', 'IS_VISIBLE', 'true');
  INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, ATTR_VALUE) VALUES 
  ('USER_ORG_MEMBERSHIP_VIS', 'USER_ORG_MEMBERSHIP', 'IS_VISIBLE', 'true');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_INFO_PAGE', 'RESET_ACCOUNT');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_INFO_PAGE', 'RESET_CHALLENGE_RESPONSE');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_INFO_PAGE', 'DEACTIVATE_USER');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_INFO_PAGE', 'REMOVE_USER');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_INFO_PAGE', 'ENABLE_USER');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_INFO_PAGE', 'DISABLE_USER');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_INFO_PAGE', 'ACTIVE_USER');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_ENTITLEMENTS_PAGE', 'USER_ROLES_MEMBERSHIP');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_ENTITLEMENTS_PAGE', 'USER_GROUPS_MEMBERSHIP');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_ENTITLEMENTS_PAGE', 'USER_RES_MEMBERSHIP');
  INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES
  ('USER_ENTITLEMENTS_PAGE', 'USER_ORG_MEMBERSHIP');

INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES
  ('9','USER_INFO_PAGE');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES ('9','RESET_ACCOUNT');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','RESET_CHALLENGE_RESPONSE');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','DEACTIVATE_USER');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','REMOVE_USER');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','ENABLE_USER');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','DISABLE_USER');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','ACTIVE_USER');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','USER_ENTITLEMENTS_PAGE');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','USER_ROLES_MEMBERSHIP');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','USER_GROUPS_MEMBERSHIP');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','USER_RES_MEMBERSHIP');
  INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES  ('9','USER_ORG_MEMBERSHIP');

INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_USER_INFO_PAGE_DESC', '1', 'ResourceEntity.displayNameMap', 'USER_INFO_PAGE', 'User Info Page');
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_USER_INFO_PAGE_DESC', '2', 'ResourceEntity.displayNameMap', 'USER_INFO_PAGE', 'Benutzer Info Seite');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_USER_INFO_PAGE_DESC', '4', 'ResourceEntity.displayNameMap', 'USER_INFO_PAGE', 'Página Información de Usuario');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_USER_INFO_PAGE_DESC', '8', 'ResourceEntity.displayNameMap', 'USER_INFO_PAGE', 'Страница Информация о пользователе');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_USER_INFO_PAGE_DESC', '9', 'ResourceEntity.displayNameMap', 'USER_INFO_PAGE', 'ユーザー情報ページ');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_USER_INFO_PAGE_DESC', '10','ResourceEntity.displayNameMap', 'USER_INFO_PAGE', '用户信息網頁');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_RESET_ACCOUNT_DESC', '1', 'ResourceEntity.displayNameMap', 'RESET_ACCOUNT', 'Reset Account');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_RESET_ACCOUNT_DESC', '2', 'ResourceEntity.displayNameMap', 'RESET_ACCOUNT', 'Konto zurücksetzen');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_RESET_ACCOUNT_DESC', '4', 'ResourceEntity.displayNameMap', 'RESET_ACCOUNT', 'Restaurar Cuenta'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_RESET_ACCOUNT_DESC', '8', 'ResourceEntity.displayNameMap', 'RESET_ACCOUNT', 'Сбросить аккаунт'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_RESET_ACCOUNT_DESC', '9', 'ResourceEntity.displayNameMap', 'RESET_ACCOUNT', 'アカウントをリセット');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_RESET_ACCOUNT_DESC', '10','ResourceEntity.displayNameMap', 'RESET_ACCOUNT', '重置账号'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_RESET_CHALLENGE_RESPONSE_DESC', '1', 'ResourceEntity.displayNameMap', 'RESET_CHALLENGE_RESPONSE', 'Reset Challenge Response');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_RESET_CHALLENGE_RESPONSE_DESC', '2', 'ResourceEntity.displayNameMap', 'RESET_CHALLENGE_RESPONSE', 'Zurücksetzen von Anfrage/Antwort');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_RESET_CHALLENGE_RESPONSE_DESC', '4', 'ResourceEntity.displayNameMap', 'RESET_CHALLENGE_RESPONSE', 'Restablecer respuesta de la Pregunta de Seguridad'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_RESET_CHALLENGE_RESPONSE_DESC', '8', 'ResourceEntity.displayNameMap', 'RESET_CHALLENGE_RESPONSE', 'Сбросить контрольные вопросы');
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_RESET_CHALLENGE_RESPONSE_DESC', '9', 'ResourceEntity.displayNameMap', 'RESET_CHALLENGE_RESPONSE', 'チャレンジレスポンスをリセット');
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_RESET_CHALLENGE_RESPONSE_DESC', '10','ResourceEntity.displayNameMap', 'RESET_CHALLENGE_RESPONSE', '重置安全问题答案');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_DEACTIVATE_USER_DESC', '1', 'ResourceEntity.displayNameMap', 'DEACTIVATE_USER', 'DeActivate'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_DEACTIVATE_USER_DESC', '2', 'ResourceEntity.displayNameMap', 'DEACTIVATE_USER', 'Deaktivieren'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_DEACTIVATE_USER_DESC', '4', 'ResourceEntity.displayNameMap', 'DEACTIVATE_USER', 'Baja');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_DEACTIVATE_USER_DESC', '8', 'ResourceEntity.displayNameMap', 'DEACTIVATE_USER', 'Пометить как "удаленый"');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_DEACTIVATE_USER_DESC', '9', 'ResourceEntity.displayNameMap', 'DEACTIVATE_USER', '非アクティブ化');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_DEACTIVATE_USER_DESC', '10','ResourceEntity.displayNameMap', 'DEACTIVATE_USER', '使用户无效');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_REMOVE_USER_DESC', '1', 'ResourceEntity.displayNameMap', 'REMOVE_USER', 'Delete');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_REMOVE_USER_DESC', '2', 'ResourceEntity.displayNameMap', 'REMOVE_USER', 'Löschen');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_REMOVE_USER_DESC', '4', 'ResourceEntity.displayNameMap', 'REMOVE_USER', 'Borrar');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_REMOVE_USER_DESC', '8', 'ResourceEntity.displayNameMap', 'REMOVE_USER', 'Удалить');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_REMOVE_USER_DESC', '9', 'ResourceEntity.displayNameMap', 'REMOVE_USER', '削除');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_REMOVE_USER_DESC', '10','ResourceEntity.displayNameMap', 'REMOVE_USER', '删除');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_ENABLE_USER_DESC', '1', 'ResourceEntity.displayNameMap', 'ENABLE_USER', 'Enable');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_ENABLE_USER_DESC', '2', 'ResourceEntity.displayNameMap', 'ENABLE_USER', 'Aktivieren'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_ENABLE_USER_DESC', '4', 'ResourceEntity.displayNameMap', 'ENABLE_USER', 'Desbloquear'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_ENABLE_USER_DESC', '8', 'ResourceEntity.displayNameMap', 'ENABLE_USER', 'Включить');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_ENABLE_USER_DESC', '9', 'ResourceEntity.displayNameMap', 'ENABLE_USER', '有効');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_ENABLE_USER_DESC', '10','ResourceEntity.displayNameMap', 'ENABLE_USER', '启用');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_DISABLE_USER_DESC', '1', 'ResourceEntity.displayNameMap', 'DISABLE_USER', 'Disable');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_DISABLE_USER_DESC', '2', 'ResourceEntity.displayNameMap', 'DISABLE_USER', 'Deaktivieren');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_DISABLE_USER_DESC', '4', 'ResourceEntity.displayNameMap', 'DISABLE_USER', 'Bloquear'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_DISABLE_USER_DESC', '8', 'ResourceEntity.displayNameMap', 'DISABLE_USER', 'Отключить');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_DISABLE_USER_DESC', '9', 'ResourceEntity.displayNameMap', 'DISABLE_USER', '無効');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_DISABLE_USER_DESC', '10','ResourceEntity.displayNameMap', 'DISABLE_USER', '禁用');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_ACTIVE_USER_DESC', '1', 'ResourceEntity.displayNameMap', 'ACTIVE_USER', 'Active');
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_ACTIVE_USER_DESC', '2', 'ResourceEntity.displayNameMap', 'ACTIVE_USER', 'Aktiv');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_ACTIVE_USER_DESC', '4', 'ResourceEntity.displayNameMap', 'ACTIVE_USER', 'Activar'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_ACTIVE_USER_DESC', '8', 'ResourceEntity.displayNameMap', 'ACTIVE_USER', 'Активировать');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_ACTIVE_USER_DESC', '9', 'ResourceEntity.displayNameMap', 'ACTIVE_USER', 'アクティブ');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_ACTIVE_USER_DESC', '10','ResourceEntity.displayNameMap', 'ACTIVE_USER', '有效'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_USER_ENTITLEMENTS_PAGE_DESC', '1', 'ResourceEntity.displayNameMap', 'USER_ENTITLEMENTS_PAGE', 'User Entitlements Page');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_USER_ENTITLEMENTS_PAGE_DESC', '2', 'ResourceEntity.displayNameMap', 'USER_ENTITLEMENTS_PAGE', 'Benutzer Berechtigungen Seite');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_USER_ENTITLEMENTS_PAGE_DESC', '4', 'ResourceEntity.displayNameMap', 'USER_ENTITLEMENTS_PAGE', 'Página Derechos de Usuario'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_USER_ENTITLEMENTS_PAGE_DESC', '8', 'ResourceEntity.displayNameMap', 'USER_ENTITLEMENTS_PAGE', 'Страница Разрешения пользователя'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_USER_ENTITLEMENTS_PAGE_DESC', '9', 'ResourceEntity.displayNameMap', 'USER_ENTITLEMENTS_PAGE', 'ユーザーの権限ページ'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_USER_ENTITLEMENTS_PAGE_DESC', '10','ResourceEntity.displayNameMap', 'USER_ENTITLEMENTS_PAGE', '用户权利網頁'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_USER_ROLES_MEMBERSHIP_DESC', '1', 'ResourceEntity.displayNameMap', 'USER_ROLES_MEMBERSHIP', 'Member of Roles'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_USER_ROLES_MEMBERSHIP_DESC', '2', 'ResourceEntity.displayNameMap', 'USER_ROLES_MEMBERSHIP', 'Rollenmitglieder'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_USER_ROLES_MEMBERSHIP_DESC', '4', 'ResourceEntity.displayNameMap', 'USER_ROLES_MEMBERSHIP', 'Roles Vinculados');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_USER_ROLES_MEMBERSHIP_DESC', '8', 'ResourceEntity.displayNameMap', 'USER_ROLES_MEMBERSHIP', 'Участник ролей');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_USER_ROLES_MEMBERSHIP_DESC', '9', 'ResourceEntity.displayNameMap', 'USER_ROLES_MEMBERSHIP', 'ロースのメンバー');
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_USER_ROLES_MEMBERSHIP_DESC', '10','ResourceEntity.displayNameMap', 'USER_ROLES_MEMBERSHIP', '角色成员');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_USER_GROUPS_MEMBERSHIP_DESC', '1', 'ResourceEntity.displayNameMap', 'USER_GROUPS_MEMBERSHIP', 'Member of Groups');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_USER_GROUPS_MEMBERSHIP_DESC', '2', 'ResourceEntity.displayNameMap', 'USER_GROUPS_MEMBERSHIP', 'Gruppenmitglieder');
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_USER_GROUPS_MEMBERSHIP_DESC', '4', 'ResourceEntity.displayNameMap', 'USER_GROUPS_MEMBERSHIP', 'Grupos Vinculados');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_USER_GROUPS_MEMBERSHIP_DESC', '8', 'ResourceEntity.displayNameMap', 'USER_GROUPS_MEMBERSHIP', 'Участник группы');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_USER_GROUPS_MEMBERSHIP_DESC', '9', 'ResourceEntity.displayNameMap', 'USER_GROUPS_MEMBERSHIP', 'グループのメンバー'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_USER_GROUPS_MEMBERSHIP_DESC', '10','ResourceEntity.displayNameMap', 'USER_GROUPS_MEMBERSHIP', '群组成员');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_USER_RES_MEMBERSHIP_DESC', '1', 'ResourceEntity.displayNameMap', 'USER_RES_MEMBERSHIP', 'Entitled to Resources');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_USER_RES_MEMBERSHIP_DESC', '2', 'ResourceEntity.displayNameMap', 'USER_RES_MEMBERSHIP', 'Berechtigt für Ressourcen'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_USER_RES_MEMBERSHIP_DESC', '4', 'ResourceEntity.displayNameMap', 'USER_RES_MEMBERSHIP', 'Recursos Vinculados'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_USER_RES_MEMBERSHIP_DESC', '8', 'ResourceEntity.displayNameMap', 'USER_RES_MEMBERSHIP', 'Распределенные ресурсы'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_USER_RES_MEMBERSHIP_DESC', '9', 'ResourceEntity.displayNameMap', 'USER_RES_MEMBERSHIP', 'リソースへの権限'); 
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_USER_RES_MEMBERSHIP_DESC', '10','ResourceEntity.displayNameMap', 'USER_RES_MEMBERSHIP', '关联资源');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('EN_USER_ORG_MEMBERSHIP_DESC', '1', 'ResourceEntity.displayNameMap', 'USER_ORG_MEMBERSHIP', 'Member of Organizations');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('DE_USER_ORG_MEMBERSHIP_DESC', '2', 'ResourceEntity.displayNameMap', 'USER_ORG_MEMBERSHIP', 'Organisationsmitglied');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ES_USER_ORG_MEMBERSHIP_DESC', '4', 'ResourceEntity.displayNameMap', 'USER_ORG_MEMBERSHIP', 'Organizaciones Vinculadas');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('RU_USER_ORG_MEMBERSHIP_DESC', '8', 'ResourceEntity.displayNameMap', 'USER_ORG_MEMBERSHIP', 'Член организаций');  
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('JP_USER_ORG_MEMBERSHIP_DESC', '9', 'ResourceEntity.displayNameMap', 'USER_ORG_MEMBERSHIP', '組織のメンバー');   
  INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES
  ('ZH_USER_ORG_MEMBERSHIP_DESC', '10','ResourceEntity.displayNameMap', 'USER_ORG_MEMBERSHIP', '组织成员');
  
  /********************** ddl/1.fix_fields_length.sql *********************************************/
ALTER TABLE RES MODIFY (DESCRIPTION VARCHAR(512) DEFAULT NULL);

UPDATE COMPANY SET LST_UPDATED_BY=SUBSTR(LST_UPDATED_BY, 1, 32);

ALTER TABLE COMPANY MODIFY (CREATED_BY VARCHAR(32) DEFAULT NULL);
ALTER TABLE COMPANY MODIFY (LST_UPDATED_BY VARCHAR(32) DEFAULT NULL);
ALTER TABLE COMPANY MODIFY (DESCRIPTION VARCHAR(512) DEFAULT NULL);

  /********************** ddl/2.alter_identity.sql *********************************************/
ALTER TABLE IDENTITY ADD ( PROV_STATUS VARCHAR(20) NULL);
ALTER TABLE IDENTITY ADD ( LAST_UPDATE TIMESTAMP NULL);

UPDATE IDENTITY SET LAST_UPDATE = CREATE_DATE WHERE LAST_UPDATE IS NULL;

  CREATE OR REPLACE TRIGGER ON_IDENTITY_INSERT
BEFORE 
INSERT ON IDENTITY 
	FOR EACH ROW
	BEGIN
		:NEW.CREATE_DATE := SYSDATE;
		:NEW.LAST_UPDATE := SYSDATE;
	END;
	
/
ALTER TRIGGER ON_IDENTITY_INSERT ENABLE;

  CREATE OR REPLACE TRIGGER ON_IDENTITY_UPDATE
BEFORE 
INSERT ON IDENTITY 
	FOR EACH ROW
	BEGIN
		:NEW.LAST_UPDATE := SYSDATE;
	END;
	
/
ALTER TRIGGER ON_IDENTITY_UPDATE ENABLE;  
/**********************ddl/3.alter_man_sys.sql *********************************************/
ALTER TABLE MANAGED_SYS ADD (SKIP_GROUP_PROV CHAR(1)  DEFAULT 'Y' NOT NULL);

UPDATE MANAGED_SYS SET SKIP_GROUP_PROV = 'N' WHERE MANAGED_SYS_ID IN 
    (SELECT MANAGED_SYS_ID FROM MNG_SYS_OBJECT_MATCH WHERE OBJECT_TYPE = 'GROUP' AND SEARCH_FILTER IS NOT NULL);

/********************** dml/2.Add_metadata_type_localization.sql *********************************************/
DECLARE
 num NUMBER := 0;
BEGIN 
  SELECT count(1) INTO num FROM LANGUAGE_MAPPING WHERE LANGUAGE_ID='1' AND REFERENCE_ID='PRIMARY_LOCATION' AND REFERENCE_TYPE='MetadataTypeEntity.displayNameMap';
  IF (num = 0) THEN
  	INSERT INTO LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) VALUES ('MetadataTypeEntity88','1','PRIMARY_LOCATION','MetadataTypeEntity.displayNameMap','Primary Location');
  END IF;
  
  SELECT count(1) INTO num FROM LANGUAGE_MAPPING WHERE LANGUAGE_ID='2' AND REFERENCE_ID='PRIMARY_LOCATION' AND REFERENCE_TYPE='MetadataTypeEntity.displayNameMap';
  IF (num = 0) THEN
  	INSERT INTO LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) VALUES ('DEMetadataTypeEntity88','2','PRIMARY_LOCATION','MetadataTypeEntity.displayNameMap','Primary Location');
  END IF;
  
  SELECT count(1) INTO num FROM LANGUAGE_MAPPING WHERE LANGUAGE_ID='4' AND REFERENCE_ID='PRIMARY_LOCATION' AND REFERENCE_TYPE='MetadataTypeEntity.displayNameMap';
  IF (num = 0) THEN
    INSERT INTO LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) VALUES ('ESMetadataTypeEntity88','4','PRIMARY_LOCATION','MetadataTypeEntity.displayNameMap','Ubicación principal');
  END IF;
  
  SELECT count(1) INTO num FROM LANGUAGE_MAPPING WHERE LANGUAGE_ID='8' AND REFERENCE_ID='PRIMARY_LOCATION' AND REFERENCE_TYPE='MetadataTypeEntity.displayNameMap';
  IF (num = 0) THEN
  	Insert into LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) values ('RUMetadataTypeEntity88','8','PRIMARY_LOCATION','MetadataTypeEntity.displayNameMap','Основное местоположение');
  END IF;
  
  SELECT count(1) INTO num FROM LANGUAGE_MAPPING WHERE LANGUAGE_ID='9' AND REFERENCE_ID='PRIMARY_LOCATION' AND REFERENCE_TYPE='MetadataTypeEntity.displayNameMap';
  IF (num = 0) THEN
  	INSERT INTO LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) VALUES ('JPMetadataTypeEntity88','9','PRIMARY_LOCATION','MetadataTypeEntity.displayNameMap','プライマリロケーション');
  END IF;
  
  SELECT count(1) INTO num FROM LANGUAGE_MAPPING WHERE LANGUAGE_ID='10' AND REFERENCE_ID='PRIMARY_LOCATION' AND REFERENCE_TYPE='MetadataTypeEntity.displayNameMap';
  IF (num = 0) THEN
  	INSERT INTO LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) VALUES ('ZHMetadataTypeEntity88','10','PRIMARY_LOCATION','MetadataTypeEntity.displayNameMap','主要位置');
  END IF;
END;
/

commit;