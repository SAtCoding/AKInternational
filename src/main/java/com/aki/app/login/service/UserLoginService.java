package com.aki.app.login.service;


import com.aki.app.core.model.User;

public interface UserLoginService {

  String userLogin(String email);

  boolean isEmailExists(String email);

  long getUserIdByEmail(String email);

  User getUserById(long userId);

  long getRoleIdByEmail(String email);

  String getEmpNameByUserId(long userId);

  String getPasswordByUserId(long userId);
}
