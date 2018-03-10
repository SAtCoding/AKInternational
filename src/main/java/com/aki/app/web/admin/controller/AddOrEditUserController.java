package com.aki.app.web.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.aki.app.core.model.User;
import com.aki.app.service.security.UserService;

@Controller
@RequestMapping("/admin")
public class AddOrEditUserController {

  @Autowired
  public UserService userService;

  @RequestMapping(value = "/editUserView", method = RequestMethod.GET)
  public String editUser(@RequestParam int userid, @RequestParam int editUserId, ModelMap map) {

    User user = this.userService.getUserByUserId(editUserId);
    map.addAttribute("user", user);
    map.addAttribute("roles", this.userService.getRoles());
    map.addAttribute("AllUsers", "selected");
    return "editUserView";
  }

  @RequestMapping(value = "/modifyUser", method = RequestMethod.POST)
  public String modifyUser(@RequestParam Integer userid, @ModelAttribute User user,
      BindingResult result, ModelMap map) {
    System.out.println("register resource");
    user.setUsername(user.getUsername());
    User registeredUser = this.userService.modifyUser(user);
    if (registeredUser != null) {
      return "redirect:/admin/allUsersView?userid=" + userid;
    }
    return "redirect:/admin/editUserView?userid=" + userid + "&editUserId" + user.getUserid();
  }

  @RequestMapping(value = "/addUserView", method = RequestMethod.GET)
  public String addUser(@RequestParam int userid, ModelMap map) {

    map.addAttribute("user", new User());
    map.addAttribute("roles", this.userService.getRoles());
    map.addAttribute("AllUsers", "selected");
    return "addUserView";
  }

  @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
  public String registerUser(@RequestParam Integer userid, @ModelAttribute User user,
      BindingResult result, ModelMap map) {
    System.out.println("register resource");

    // this.addResourceValidator.validate(user, result);
    // if(result.hasErrors()){
    //
    // List<Team> teamlist = this.addResourceService.getAllTeams();
    // List<String> desglist = this.addResourceService.getAlldesignations();
    // List<Role> authoritylist = this.addResourceService.getAllAuthority();
    // map.addAttribute("resourcetab", "seen");
    // map.addAttribute("AddResourceUI", "selected");
    // map.addAttribute("userid", userid);
    // map.addAttribute("teamlist", teamlist);
    // map.addAttribute("desglist", desglist);
    // map.addAttribute("authoritylist", authoritylist);
    // return "addresource";
    // }
    // else{
    // String password="corasent123";
    // user.setPassword(addResourceService.hashPassword(password));
    // User registeredUser = this.addResourceService.addResouces(user);

    String password = "abc@123";
    user.setPassword(password);
    user.setUsername(user.getUsername());
    User registeredUser = this.userService.addUser(user);
    if (registeredUser != null) {
      System.out.println("Registration is successfull");
      // try {
      // if(emailManager.sendRegistrationMail(registeredUser, password))
      // {
      // System.out.println("Sent successfull");
      // }else{
      // System.out.println("Sending Failed");
      // }
      // } catch (Exception e) {
      // e.printStackTrace();
      // }
      return "redirect:/admin/allUsersView?userid=" + userid;
    }
    return "redirect:/admin/registerUser?userid=" + userid + "&Failure";
  }

}
