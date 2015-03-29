package org.openiam.ui.webconsole.web.mvc;

import org.apache.commons.collections.CollectionUtils;
import org.codehaus.jackson.JsonGenerationException;
import org.openiam.idm.srvc.auth.dto.Login;
import org.openiam.idm.srvc.auth.ws.LoginDataWebService;
import org.openiam.idm.srvc.auth.ws.LoginListResponse;
import org.openiam.idm.srvc.mngsys.dto.ManagedSysDto;
import org.openiam.idm.srvc.policy.dto.Policy;
import org.openiam.idm.srvc.user.dto.User;
import org.openiam.idm.srvc.user.dto.UserStatusEnum;
import org.openiam.idm.srvc.user.ws.UserDataWebService;
import org.openiam.ui.web.mvc.AbstractPasswordController;
import org.openiam.ui.rest.api.model.ResetPasswordBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@Controller
public class ResetUserPasswordController extends AbstractPasswordController {

    @Value("${org.openiam.provision.service.flag}")
    protected Boolean provisionServiceFlag;
    @Value("${org.openiam.ui.landingpage.user.edit.root.id}")
    protected String userEditRootMenuId;
    @Resource(name = "loginServiceClient")
    private LoginDataWebService loginDataWebService;
    @Resource(name = "userServiceClient")
    private UserDataWebService userDataWebService;

    @RequestMapping(value = "/resetPassword", method = RequestMethod.GET)
    public String geResetPasswordPage(final HttpServletRequest request, final HttpServletResponse response,
                                      final @RequestParam(required = false, value = "id") String userId) throws IOException {

        final User user = userDataWebService.getUserWithDependent(userId, getRequesterId(request), false);
        if (user == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, String.format("User with id '%s' does not exist", userId));
            return null;
        }
        ResetPasswordBean passwordBean = new ResetPasswordBean();

        Login lg = loginDataWebService.getPrimaryIdentity(userId).getPrincipal();

        if (lg != null && defaultManagedSysId.equalsIgnoreCase(lg.getManagedSysId())) {
            passwordBean.setPrincipal(lg.getLogin());
        }
        passwordBean.setUserId(userId);
        passwordBean.setManagedSystemId(null);

        setMenuTree(request, userEditRootMenuId);
        request.setAttribute("password", passwordBean);
        request.setAttribute("login", lg);
        request.setAttribute("user", user);
        if (user.getSecondaryStatus() != null)
            request.setAttribute("userSecondaryStatus", user.getSecondaryStatus().getValue());
        return "users/resetPassword";
    }


    @ModelAttribute("userManagedSystems")
    public String populateUserManagedSystems(final HttpServletRequest request,
                                             final @RequestParam(required = true, value = "id") String userId) throws IOException {
        Map<String, ManagedSysDto> userManagedSystems = new LinkedHashMap<String, ManagedSysDto>();
        final LoginListResponse response = loginDataWebService.getLoginByUser(userId);
        if (response.isSuccess()) {
            for (Login login : response.getPrincipalList()) {
                ManagedSysDto managedSys = managedSysServiceClient.getManagedSys(login.getManagedSysId());
                if (managedSys != null) {
                    userManagedSystems.put(managedSys.getId(), managedSys);
                }
            }
        }

        return jacksonMapper.writeValueAsString(userManagedSystems);
    }
}
