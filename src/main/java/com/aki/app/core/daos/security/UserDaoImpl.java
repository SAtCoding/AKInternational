package com.aki.app.core.daos.security;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Repository;
import com.aki.app.core.model.Role;
import com.aki.app.core.model.User;
import com.aki.app.core.util.helper.StringHelper;
import com.aki.app.core.util.search.SearchResult;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

  @Autowired
  private SessionFactory sessionFactory;

  @Override
  @SuppressWarnings("unchecked")
  public User getUserByEmail(String email) {
    if (!email.isEmpty()) {
      List<User> users = new ArrayList<User>();
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createQuery("select u from User u where email=?");
      query.setParameter(0, email);
      users = query.list();
      if (users.size() > 0) {
        System.out.println("user rolename from db" + users.get(0).getRole().getRoleName());
        return users.get(0);
      }
    }
    return null;
  }

  @Override
  @SuppressWarnings("unchecked")
  public String getAuthorityByEmail(String email) {
    if (!email.isEmpty()) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createSQLQuery(
          "select r.authority from role r,user u where u.roleid=r.roleid and u.email=?");
      query.setParameter(0, email);
      List<String> roles = query.list();
      if (roles.size() > 0) {
        System.out.println("Authority for the user" + roles.get(0));
        return roles.get(0);
      }
    }

    return null;
  }

  @Override
  @SuppressWarnings("unchecked")
  public String getRoleByEmail(String email) {
    if (email != null) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createSQLQuery(
          "select r.rolename from role r,user u where u.roleid=r.roleid and u.email=?");
      query.setParameter(0, email);
      List<String> roles = query.list();
      if (roles.size() > 0) {
        System.out.println("Role for the user :" + roles.get(0));
        return roles.get(0);
      }
    }
    return null;
  }

  @Override
  public boolean changePassword(String password, long userid) {
    boolean changedPassword = false;
    Session session = this.sessionFactory.getCurrentSession();
    String hashedpass = BCrypt.hashpw(password, BCrypt.gensalt());
    System.out.println("hashed pass :" + hashedpass);
    User user = (User) session.get(User.class, userid);
    System.out.println(user.getEmail());
    if (user != null) {
      user.setPassword(hashedpass);
      System.out.println("Password is changed now ");
      session.update(user);
      session.flush();
      System.out.println("Password is changed now ");
      changedPassword = true;
    }

    return changedPassword;
  }


  @Override
  public List<User> getAllUsersForPagination() {
    List<User> users = new ArrayList<User>();
    Query query = this.sessionFactory.getCurrentSession().createQuery("from User");
    users = query.list();
    return users;
  }

  public SessionFactory getSessionFactory() {
    return sessionFactory;
  }

  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public User getUserByUserId(long userid) {
    List<User> users = new ArrayList<User>();
    Query query =
        this.sessionFactory.getCurrentSession().createQuery("from User u where u.userid=?");
    query.setParameter(0, userid);
    users = query.list();
    if (users.size() > 0) {
      System.out.println("user rolename from db" + users.get(0).getRole().getRoleName());
      return users.get(0);
    }

    return null;
  }

  @Override
  public User addUser(User user) {

    Session session = this.sessionFactory.getCurrentSession();
    long id = (Long) session.save(user);
    session.flush();
    if (id > 0) {
      return user;
    }
    return null;
  }

  @Override
  public List<Role> getRoles() {
    List<Role> roles = new ArrayList<Role>();
    Query query = this.sessionFactory.getCurrentSession().createQuery("from Role");
    roles = query.list();
    return roles;
  }

  @Override
  public User modifyUser(User user) {

    Session session = this.sessionFactory.getCurrentSession();
    try {
      session.update(user);
    } catch (HibernateException he) {
      System.out.println("Unsuccessful update action");
    }
    session.flush();
    return user;
  }
}
