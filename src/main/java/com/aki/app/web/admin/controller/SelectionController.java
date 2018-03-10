package com.aki.app.web.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.aki.app.login.service.UserLoginService;

@Controller
@RequestMapping("/admin")
public class SelectionController {
  @Autowired
  private UserLoginService userLoginService;

  @RequestMapping(value = "/selectionSection", method = RequestMethod.GET)
  public String adminSelectionSection(@RequestParam Integer userid, ModelMap map) {
   /* String EmpName = this.userLoginService.getEmpNameByUserId(userid);
    map.addAttribute("username", EmpName);
    map.addAttribute("userid", userid);
    System.out.println("name :" + EmpName);*/
    return "selectionSection";
  }
}
