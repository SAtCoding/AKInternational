package com.aki.app.support;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.aki.app.core.model.User;
import com.aki.app.login.service.UserLoginService;
import com.aki.app.service.security.UserService;

@Component
public class SecurityHelper {

  @Autowired
  private UserService userService;

  @Autowired
  private UserLoginService userLoginService;

  public boolean isAdmin(User loggedInUser) {

    if (loggedInUser != null) {
      System.out.println("checking for admin user");
      long roleId = userLoginService.getRoleIdByEmail(loggedInUser.getEmail());
      String rolename = userService.getRoleByEmail(loggedInUser.getEmail());
      if ((roleId == 1) && (rolename.equalsIgnoreCase("ROLE_ADMIN"))) {
        System.out.println("admin logged in.......");
        return true;
      }
    }
    return false;
  }

  public boolean isSalesRepresentative(User loggedInUser) {

    System.out.println("logged in user is resource");
    if (loggedInUser != null) {
      System.out.println("adjfgjfvg" + loggedInUser);
      long roleId = this.userLoginService.getRoleIdByEmail(loggedInUser.getEmail());
      System.out.println("roleid from intercepter :" + roleId);
      String authority = this.userService.getAuthorityByEmail(loggedInUser.getEmail());
      System.out.println("Authority from intercepter :" + authority);
      String rolename = this.userService.getRoleByEmail(loggedInUser.getEmail());
      System.out.println("rolename from intercepter :" + rolename);
      if ((roleId == 2) && (rolename.equalsIgnoreCase("ROLE_SALES_REP"))) {
        return true;
      }
    }
    return false;
  }

  public boolean isTeamLeader(User loggedInUser) {

    System.out.println("logged in user is resource");
    if (loggedInUser != null) {
      System.out.println("adjfgjfvg" + loggedInUser);
      long roleId = this.userLoginService.getRoleIdByEmail(loggedInUser.getEmail());
      System.out.println("roleid from intercepter :" + roleId);
      String authority = this.userService.getAuthorityByEmail(loggedInUser.getEmail());
      System.out.println("Authority from intercepter :" + authority);
      String rolename = this.userService.getRoleByEmail(loggedInUser.getEmail());
      System.out.println("rolename from intercepter :" + rolename);
      if ((roleId == 3) && (rolename.equalsIgnoreCase("ROLE_TL"))) {
        return true;
      }
    }
    return false;
  }

  public UserService getUserService() {
    return userService;
  }

  public void setUserService(UserService userService) {
    this.userService = userService;
  }

  public UserLoginService getUserLoginService() {
    return userLoginService;
  }

  public void setUserLoginService(UserLoginService userLoginService) {
    this.userLoginService = userLoginService;
  }

}
