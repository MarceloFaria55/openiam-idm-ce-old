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
		<title>${titleOrganizatioName} - <fmt:message key="openiam.idp.logout" /></title>
		<link href="/openiam-ui-static/css/common/style.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="/openiam-ui-static/css/webconsole/login.css" rel="stylesheet" type="text/css" media="screen" />
		<openiam:overrideCSS />
        <script type="text/javascript" src="/openiam-ui-static/_dynamic/openiamResourceBundle.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/jquery/jquery-1.8.2.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/jquery.corner.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/jquery.boxshadow.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/openiam.common.js"></script>
		<script type="text/javascript" src="/openiam-ui-static/js/common/login.js"></script>
		<script type="text/javascript">
			OPENIAM = window.OPENIAM || {};
			OPENIAM.ENV = window.OPENIAM.ENV || {};
		</script>
	</head>
	<body>
    <c:import url="/WEB-INF/jsp/core/login-header.jsp"/>
    <div id="pagebg">
			<div id="login">
				<div id="llogo">
					<a href="javascript:void(0);" class="logo llogo">Openiam</a>
				</div>
				
				<div id="credentials">
					<div><fmt:message key="openiam.idp.successfully.logged.out" /></div>
					<a id="loginAgain" href="${requestScope.loginTo}"><fmt:message key="openiam.ui.user.login.again" /></a>
				</div>
				
			</div>
			<iframe style="display:none" src="/webconsole/clearContext.html"></iframe>
			<iframe style="display:none" src="/webconsole-am/clearContext.html"></iframe>
			<iframe style="display:none" src="/webconsole-idm/clearContext.html"></iframe>
			<iframe style="display:none" src="/selfservice/clearContext.html"></iframe>
			<iframe style="display:none" src="/selfservice-ext/clearContext.html"></iframe>
			<c:import url="/WEB-INF/jsp/core/login-footer.jsp" />	
		</div>
	</body>
</html>