package com.aki.app.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.aki.app.core.daos.security.UserLoginDao;
import com.aki.app.core.model.User;

@Service("userLoginService")
@Transactional
public class UserLoginServiceImpl implements UserLoginService{
	
	@Autowired
	private UserLoginDao userLoginDao;
	
	@Override
	@Transactional
	public String userLogin(String email) {
		
		return userLoginDao.userLogin(email);
	}

	@Override
	@Transactional
	public boolean isEmailExists(String email) {
		
		return userLoginDao.isEmailExists(email);
	}
	
	@Override
	@Transactional
	public long getUserIdByEmail(String email) {
		
		return userLoginDao.getUserIdByEmail(email);
	}
	
	@Override
	@Transactional
	public User getUserById(long userId) {
		
		return userLoginDao.getUserById(userId);
	}
	
	@Override
	@Transactional
	public long getRoleIdByEmail(String email) {
		
		return userLoginDao.getRoleIdByEmail(email);
	}
	
	@Override
	public String getEmpNameByUserId(long userId) {
		
		return userLoginDao.getEmpNameByUserId(userId);
	}

	@Override
	public String getPasswordByUserId(long userId) {
		
		return userLoginDao.getPasswordByUserId(userId);
	}

	public UserLoginDao getUserLoginDao() {
		return userLoginDao;
	}

	public void setUserLoginDao(UserLoginDao userLoginDao) {
		this.userLoginDao = userLoginDao;
	}

	

}
