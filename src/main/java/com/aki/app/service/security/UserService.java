package com.aki.app.service.security;

import java.util.List;
import com.aki.app.core.model.Role;
import com.aki.app.core.model.User;
import com.aki.app.core.util.search.SearchResult;

public interface UserService {

  User getUserByEmail(String email);

  String getAuthorityByEmail(String email);

  String getRoleByEmail(String email);

  boolean changePassword(String password, long userid);

  List<User> getAllUsersForPagination();

  User getUserByUserId(long userid);

  User addUser(User user);

  User modifyUser(User user);

  List<Role> getRoles();

}
