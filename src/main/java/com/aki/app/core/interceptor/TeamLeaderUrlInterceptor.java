package com.aki.app.core.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.aki.app.core.model.User;
import com.aki.app.service.security.UserService;
import com.aki.app.support.SecurityHelper;

@Component
public class TeamLeaderUrlInterceptor implements HandlerInterceptor {

  @Autowired
  private UserService userService;

  @Autowired
  private SecurityHelper securityHelper;

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
      Object handlerObject) throws Exception {

    System.out.println("interceptor");
    String loggedInUserId = request.getParameter("userid");

    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

    String loggedInUserEmail = (String) authentication.getName();

    User loggedInUser = getUserService().getUserByEmail(loggedInUserEmail);

    if (loggedInUserId != null) {
      if (Integer.parseInt(loggedInUserId) == loggedInUser.getUserid()) {
        if (getSecurityHelper().isTeamLeader(loggedInUser)) {
          System.out.println("team leader");
          return true;
        }

      } else {
        response.sendRedirect(request.getContextPath() + "/unauhorized");
        System.out.println("unauthorized block");
        return false;
      }
    }

    return false;
  }

  @Override
  public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
      Exception arg3) throws Exception {}

  @Override
  public void postHandle(HttpServletRequest request, HttpServletResponse response,
      Object handlerObject, ModelAndView modelAndView) throws Exception {}

  public UserService getUserService() {
    return userService;
  }

  public void setUserService(UserService userService) {
    this.userService = userService;
  }

  public SecurityHelper getSecurityHelper() {
    return securityHelper;
  }

  public void setSecurityHelper(SecurityHelper securityHelper) {
    this.securityHelper = securityHelper;
  }

}
