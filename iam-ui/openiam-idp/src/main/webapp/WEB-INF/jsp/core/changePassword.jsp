<%
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", -1); 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.openiam.com/tags/openiam" prefix="openiam" %>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<title>${titleOrganizatioName} - <fmt:message key="openiam.idp.change.password" /></title>
		<link href="/openiam-ui-static/css/common/style.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="/openiam-ui-static/js/common/jquery/css/smoothness/jquery-ui-1.9.1.custom.css" rel="stylesheet" type="text/css" />
		<link href="/openiam-ui-static/css/webconsole/login.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="/openiam-ui-static/plugins/tooltipster/css/tooltipster.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="/openiam-ui-static/css/webconsole/change.password.css" rel="stylesheet" type="text/css" media="screen" />

		<openiam:overrideCSS />
        <script type="text/javascript" src="/openiam-ui-static/_dynamic/openiamResourceBundle.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/jquery/jquery-1.8.2.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/jquery/jquery-ui-1.9.1.custom.min.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/openiam.common.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/jquery.corner.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/jquery.boxshadow.js"></script>
		
		<script type="text/javascript" src="/openiam-ui-static/js/common/password.rules.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/change.password.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/plugins/placeholder/jquery.placeholder.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/plugins/tooltipster/js/jquery.tooltipster.min.js"></script>
		<script type="text/javascript">
			OPENIAM = window.OPENIAM || {};
			OPENIAM.ENV = window.OPENIAM.ENV || {};
			OPENIAM.ENV.AjaxResponse = <c:choose><c:when test="${! empty requestScope.ajaxResponse}">${requestScope.ajaxResponse}</c:when><c:otherwise>null</c:otherwise></c:choose>;
		</script>
	</head>
	<body>
    <c:import url="/WEB-INF/jsp/core/login-header.jsp"/>
    <div id="pagebg">
			<div id="password">
				<div id="llogo">
					<a href="javascript:void(0);" class="logo llogo">Openiam</a>
				</div>
				
				<c:if test="${! empty requestScope.changeMessage}">
					<div id="credentials">
						<spring:message code="${requestScope.changeMessage.error.messageName}" arguments="${requestScope.changeMessage.params}" />
					</div>
					<c:if test="${requestScope.changeMessage.error eq 'PASSWORD_WILL_EXPIRE' or requestScope.changeMessage.error eq 'PASSWORD_WILL_EXPIRE_TODAY' or requestScope.changeMessage.error eq 'PASSWORD_WILL_EXPIRE_SOON'}">
						<div class="infoLink">
                            <fmt:message key="openiam.idp.or.you.can" /> <a href="${requestScope.hiddenAttributes['postbackURL']}"><fmt:message key="openiam.idp.skip.this" /></a>
						</div>
					</c:if>
				</c:if>
				
				<form id="login-form" action="changePassword.html" method="post">
					<c:choose>
						<c:when test="${! empty requestScope.currentLogin}">
							<input type="text" id="principal" class="loginField" value="${requestScope.currentLogin}" disabled="disabled" />
							<input type="hidden" name="login" value="${requestScope.currentLogin}" />
                            <input type="hidden" name="userId" value="${requestScope.currentUserId}" />
						</c:when>
						<c:otherwise>
							<input type="text" name="login" id="principal" class="loginField" placeholder="<fmt:message key='openiam.idp.enter.your.login' />" />
						</c:otherwise>
					</c:choose>
					<input type="password" id="currentPassword" name="currentPassword" class="passwordField" placeholder="<fmt:message key='openiam.idp.enter.current.password' />" autocomplete="off"/>
                    <div id="passwordRules" class="tooltip"></div>
                    <input type="password" id="newPassword" name="newPassword" class="passwordField" placeholder="<fmt:message key='openiam.idp.enter.new.password' />" autocomplete="off" />
					<input type="password" id="newPasswordConfirm" name="newPasswordConfirm" class="passwordField" placeholder="<fmt:message key='openiam.idp.confirm.new.password' />" autocomplete="off" />
					<c:if test="${! empty requestScope.hiddenAttributes}">
						<c:forEach var="hiddenField" items="${requestScope.hiddenAttributes}">
							<input type="hidden" name="${hiddenField.key}" value="${hiddenField.value}" />
						</c:forEach>
					</c:if>
                    <div class="lrow">
                        <a href="${requestScope.onCancelChangePasswordURL}" class="whiteBtn"><spring:message code="openiam.ui.common.cancel" /></a>
                        <a href="javascript:void(0)"><input id="submit" type="submit" class="redBtn" value="<fmt:message key='openiam.idp.change.password' />" /></a>
                    </div>
				</form>
				
				<div id="lbuttons">
					
				</div>
			</div>		
			<c:import url="/WEB-INF/jsp/core/login-footer.jsp" />
		</div>
	</body>
</html>