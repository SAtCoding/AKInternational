package com.aki.app.web.login.controller;

import java.security.Principal;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.aki.app.core.model.User;
import com.aki.app.login.service.UserLoginService;

@Controller
public class LoginController {

  @Autowired
  private UserLoginService userLoginService;

  private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String home(ModelMap map) {
    map.addAttribute("user", new User());
    return "login";
  }

  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public String loginPage(@RequestParam(required = false, value = "error") String error,
      @RequestParam(required = false, value = "logout") String logout,
      @RequestParam(required = false, value = "emailError") String emailError,
      @RequestParam(required = false, value = "emailInvalid") String emailInvalid,
      @RequestParam(required = false, value = "emailSuccess") String emailSuccess,
      @RequestParam(required = false, value = "passwordSuccess") String passwordSuccess,
      ModelMap map) {
    LOGGER.info("inside login ctrl");

    map.addAttribute("logout", logout);
    map.addAttribute("error", error);
    map.addAttribute("emailError", emailError);
    map.addAttribute("emailSuccess", emailSuccess);
    map.addAttribute("emailInvalid", emailInvalid);
    map.addAttribute("passwordSuccess", passwordSuccess);
    map.addAttribute("user", new User());
    return "login";
  }

  @RequestMapping(value = "/userlogin", method = RequestMethod.GET)
  public String userLoginAction(Principal principal, ModelMap map, HttpSession session) {
    LOGGER.info("inside login ctrlllllllllllll");
    System.out.println("sachin1234565677888");
    String email = null;
    try {
      email = principal.getName();
      System.out.println(email);
    } catch (Exception e) {
      return "redirect:/login";
    }

    String dbPassword = this.userLoginService.userLogin(email);
    System.out.println(email);
    System.out.println(dbPassword);
    boolean isEmailExists = this.userLoginService.isEmailExists(email);


    if (dbPassword == null) {
      return "redirect:/login";
    } else if (isEmailExists) {
      long roleid = this.userLoginService.getRoleIdByEmail(email);
      long userId = 0;
      if (roleid == 1) {
        userId = this.userLoginService.getUserIdByEmail(email);
        User user = null;
        try {
          user = this.userLoginService.getUserById(userId);

        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
        if (user != null) {
          String statusFilter = "";
          session.setAttribute("userid", userId);
          session.setAttribute("statusFilter", statusFilter);
          return "redirect:/admin/allUsersView?userid=" + userId;
        }
      } else if (roleid == 2) {
        userId = this.userLoginService.getUserIdByEmail(email);
        User user = null;
        try {
          user = this.userLoginService.getUserById(userId);

        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
        if (user != null) {
          session.setAttribute("userid", userId);

          return "redirect:/saleRep/dashboard?userid=" + userId;
        }
      }

      else if (roleid == 3) {
        userId = this.userLoginService.getUserIdByEmail(email);
        User user = null;
        try {
          user = this.userLoginService.getUserById(userId);

        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
        if (user != null) {
          session.setAttribute("userid", userId);

          return "redirect:/teamLeader/dashboard?userid=" + userId;
        }
      }
    }

    return "redirect:/login";


  }

  public UserLoginService getUserLoginService() {
    return userLoginService;
  }

  public void setUserLoginService(UserLoginService userLoginService) {
    this.userLoginService = userLoginService;
  }


}
