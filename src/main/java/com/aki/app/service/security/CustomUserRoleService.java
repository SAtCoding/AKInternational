package com.aki.app.service.security;

import java.util.ArrayList;
import java.util.Collection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("customUserRoleService")
public class CustomUserRoleService implements UserDetailsService {

  @Autowired
  private UserService userService;

  private static final Logger LOGGER = LoggerFactory.getLogger(CustomUserRoleService.class);

  @Override
  @SuppressWarnings({"serial", "unused"})
  public UserDetails loadUserByUsername(final String username) {
    LOGGER.info("inside coustom userService before");
    final com.aki.app.core.model.User user = getUserService().getUserByEmail(username);
    if (user == null) {
      throw new UsernameNotFoundException(username);
    }
    LOGGER.info("inside coustom userService");
    return new UserDetails() {

      private long userid;

      private String name;

      private String userType;

      @Override
      public boolean isEnabled() {
        return true;
      }

      @Override
      public boolean isCredentialsNonExpired() {
        return true;
      }

      @Override
      public boolean isAccountNonLocked() {
        return true;
      }

      @Override
      public boolean isAccountNonExpired() {
        return true;
      }

      @Override
      public String getUsername() {
        return user.getEmail();
      }

      @Override
      public String getPassword() {
        return user.getPassword();
      }

      @Override
      public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority(user.getRole().getRoleName()));
        System.out.println("grantted authorities");
        return authorities;
      }

      public String getName() {
        String firstName = user.getFirstName();
        String lastName = user.getLastName();
        name = firstName.charAt(0) + lastName;
        
        return name;
      }

      public void setName(String name) {
        this.name = name;
      }

      public String getUserType() {

        userType = user.getRole().getRoleName();
        return userType;
      }

      public void setUserType(String userType) {
        this.userType = userType;
      }

      public long getUserid() {

        userid = user.getUserid();
        return userid;
      }

      public void setUserid(Integer userid) {

        this.userid = userid;
      }

    };
  }

  public UserService getUserService() {
    return userService;
  }

  public void setUserService(UserService userService) {
    this.userService = userService;
  }
}
