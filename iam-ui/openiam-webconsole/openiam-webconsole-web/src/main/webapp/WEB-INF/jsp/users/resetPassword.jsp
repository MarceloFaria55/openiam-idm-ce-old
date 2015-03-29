<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", -1);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.openiam.com/tags/openiam" prefix="openiam" %>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>${titleOrganizatioName} - <fmt:message key="openiam.ui.user.password.reset.page.title"/></title>

    <link href="/openiam-ui-static/js/common/plugins/multiselect/jquery.multiselect.css" rel="stylesheet"
          type="text/css"/>
    <link href="/openiam-ui-static/css/common/style.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/openiam-ui-static/css/common/style.client.css" rel="stylesheet" type="text/css"/>
    <link href="/openiam-ui-static/css/webconsole/user.password.css" rel="stylesheet" type="text/css"/>
    <link href="/openiam-ui-static/js/common/jquery/css/smoothness/jquery-ui-1.9.1.custom.css" rel="stylesheet"
          type="text/css"/>
    <link href="/openiam-ui-static/plugins/tooltipster/css/tooltipster.css" rel="stylesheet" type="text/css"
          media="screen"/>
    <openiam:overrideCSS/>

    <script type="text/javascript" src="/openiam-ui-static/_dynamic/openiamResourceBundle.js"></script>
    <script type="text/javascript" src="/openiam-ui-static/js/common/jquery/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="/openiam-ui-static/js/common/jquery/jquery-ui-1.9.1.custom.min.js"></script>
    <script type="text/javascript" src="/openiam-ui-static/js/common/json/json.js"></script>
    <script type="text/javascript" src="/openiam-ui-static/js/common/openiam.common.js"></script>
    <script type="text/javascript"
            src="/openiam-ui-static/js/common/plugins/multiselect/jquery.multiselect.js"></script>

    <script type="text/javascript" src="/openiam-ui-static/js/common/password.rules.js"></script>
    <script type="text/javascript" src="/openiam-ui-static/js/webconsole/user/user.reset.password.js"></script>
    <script type="text/javascript" src="/openiam-ui-static/plugins/tooltipster/js/jquery.tooltipster.min.js"></script>

    <script type="text/javascript">
        OPENIAM = window.OPENIAM || {};
        OPENIAM.ENV = window.OPENIAM.ENV || {};
        OPENIAM.ENV.ContextPath = "${pageContext.request.contextPath}";
        OPENIAM.ENV.Login = "${requestScope.login}";
        OPENIAM.ENV.UserStatus = <c:choose><c:when test="${! empty requestScope.userStatus}">"${requestScope.userStatus}"
        </c:when><c:otherwise>null
        </c:otherwise></c:choose>
        OPENIAM.ENV.UserSecondaryStatus = <c:choose><c:when test="${! empty requestScope.userSecondaryStatus}">"${requestScope.userSecondaryStatus}"
        </c:when><c:otherwise>null
        </c:otherwise></c:choose>
        OPENIAM.ENV.DefaultManagedSystemId = "${requestScope.login.managedSysId}";
        OPENIAM.ENV.ManagedSystems = <c:choose><c:when test="${not empty requestScope.userManagedSystems}">${requestScope.userManagedSystems}</c:when><c:otherwise>[]</c:otherwise></c:choose>;
        OPENIAM.ENV.MenuTree = <c:choose><c:when test="${! empty requestScope.menuTree}">${requestScope.menuTree}</c:when><c:otherwise>null</c:otherwise></c:choose>;
        OPENIAM.ENV.UserId = <c:choose><c:when test="${! empty requestScope.password.userId}">"${requestScope.password.userId}"
        </c:when><c:otherwise>null</c:otherwise></c:choose>;
        OPENIAM.ENV.MenuTreeAppendURL = <c:choose><c:when test="${! empty requestScope.password.userId}">"id=${requestScope.password.userId}"
        </c:when><c:otherwise>null</c:otherwise></c:choose>;
    </script>


</head>
<body>
<div class="title">
    <fmt:message key="openiam.ui.user.password.reset"/>: ${requestScope.user.firstName} ${requestScope.user.lastName}
</div>
<div class="frameContentDivider">
    <form id="resetPasswordForm">
        <input type="hidden" id="principal" name="principal" value="${requestScope.login.login}"/>
        <table cellpadding="8px" align="center" class="fieldset">
            <tbody>
            <%--<tr>--%>
            <%--<td>--%>
            <%--<label for="principal" class="required"><fmt:message key="openiam.ui.user.login"/>:</label>--%>
            <%--<input type="text" id="principal" class="full rounded" readonly="true"--%>
            <%--value="${requestScope.password.principal}">--%>
            <%--</td>--%>
            <%--</tr>--%>
            <tr>
                <td>
                    <label id="managedSystemIdLabel" for="managedSystem"><fmt:message
                            key="openiam.ui.user.password.managedSys"/>:</label>
                    <select name="managedSystem" id="managedSystem" multiple></select>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="passwordRules"></div>
                    <label id="passwordLabel" for="password" class="required"><fmt:message
                            key="openiam.ui.user.password"/>:</label>
                    <input id="password" type="password" class="full rounded" autocomplete="off"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label id="confirmPasswordLabel" for="confirmPassword" class="required"><fmt:message
                            key="openiam.ui.user.password.confirm"/>:</label>
                    <input id="confirmPassword" type="password" class="full rounded" autocomplete="off"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input id="notifyUserViaEmail" type="checkbox" checked="checked" value="true"
                           name="notifyUserViaEmail">
                    <i><fmt:message key="openiam.ui.user.password.send.to.user"/></i>
                </td>
            </tr>
            <tr>
                <td>
                    <input id="autoGeneratePassword" type="checkbox" value="true" name="autoGeneratePassword">
                    <i><fmt:message key="openiam.ui.user.password.auto.generate"/></i>
                </td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <td>
                    <ul class="formControls">
                        <li class="leftBtn">
                            <a href="javascript:void(0)">
                                <input type="submit" class="redBtn"
                                       value='<fmt:message key="openiam.ui.button.save"/>'/>
                            </a>
                        </li>
                        <li class="leftBtn">
                            <a href="javascript:void(0)">
                                <input type="button" id="resyncPasswordBtn" class="redBtn" style="width: 80px;"
                                       value='<fmt:message key="openiam.ui.button.resync"/>'/>
                            </a>
                        </li>
                        <li class="leftBtn">
                            <a href="editUser.html?id=${requestScope.password.userId}" class="whiteBtn"><fmt:message
                                    key="openiam.ui.button.cancel"/></a>
                        </li>
                    </ul>
                </td>
            </tr>
            </tfoot>
        </table>

    </form>
</div>
</body>
</html>