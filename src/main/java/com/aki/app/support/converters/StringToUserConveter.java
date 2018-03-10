package com.aki.app.support.converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import com.aki.app.core.model.User;
import com.aki.app.login.service.UserLoginService;

@Component
@Repository("stringToUserConveter")
public class StringToUserConveter implements Converter<String, User> {

  @Autowired
  private UserLoginService userLoginService;

  @Override
  public User convert(String s) {
    if (s == null) {
      return null;
    } else if (!StringUtils.hasLength(s)) {
      return null;
    } else {
      User user = this.userLoginService.getUserById(Integer.parseInt(s));
      return user;
    }
  }

  public UserLoginService getUserLoginService() {
    return userLoginService;
  }

  public void setUserLoginService(UserLoginService userLoginService) {
    this.userLoginService = userLoginService;
  }

}
