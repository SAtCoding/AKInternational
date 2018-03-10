package com.aki.app.service.security;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.aki.app.core.daos.security.UserDao;
import com.aki.app.core.model.Role;
import com.aki.app.core.model.User;
import com.aki.app.core.util.search.SearchResult;

@Service("userService")
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {

  @Autowired
  private UserDao userDao;

  @Override
  @Transactional(readOnly = false)
  public User getUserByEmail(String email) {

    return userDao.getUserByEmail(email);
  }

  @Override
  @Transactional(readOnly = false)
  public String getAuthorityByEmail(String email) {

    return userDao.getAuthorityByEmail(email);
  }

  @Override
  @Transactional(readOnly = false)
  public String getRoleByEmail(String email) {

    return userDao.getRoleByEmail(email);
  }

  @Override
  @Transactional(readOnly = false)
  public boolean changePassword(String password, long userid) {

    return userDao.changePassword(password, userid);
  }

  public UserDao getUserDao() {
    return userDao;
  }

  public void setUserDao(UserDao userDao) {
    this.userDao = userDao;
  }

  @Override
  public List<User> getAllUsersForPagination() {
    return userDao.getAllUsersForPagination();
  }

  @Override
  @Transactional(readOnly = false)
  public User getUserByUserId(long userid) {
    return userDao.getUserByUserId(userid);
  }

  @Override
  @Transactional(readOnly = false)
  public User addUser(User user) {
   
    return userDao.addUser(user);
  }

  @Override
  public List<Role> getRoles() {
    return userDao.getRoles();
  }

  @Override
  @Transactional(readOnly = false)
  public User modifyUser(User user) {
    
    return userDao.modifyUser(user);
  }
}
