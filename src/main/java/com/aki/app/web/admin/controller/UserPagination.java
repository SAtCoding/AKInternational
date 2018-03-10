package com.aki.app.web.admin.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aki.app.core.model.User;
import com.aki.app.service.security.UserService;

@Controller
@RequestMapping("/admin")
public class UserPagination {

  @Autowired
  public UserService userService;

  @RequestMapping(value="/allUsersView",method=RequestMethod.GET)
  public String getAllUsers(@RequestParam int userid,ModelMap map){
      map.addAttribute("resourcetab", "seen");
      map.addAttribute("AllUsers", "selected");
      return "allUsersView";
  }
  
  @RequestMapping(value = "/usersPaginationList", method = RequestMethod.GET)
  @ResponseBody
  public List<User> paginationUsersList(@RequestParam int userid) {
    
    return userService.getAllUsersForPagination();
  }
}
