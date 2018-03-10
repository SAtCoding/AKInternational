package com.aki.app.core.daos.security;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.aki.app.core.model.User;

@Repository("userLoginDao")
public class UserLoginDaoImpl implements UserLoginDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public String userLogin(String email) {

		String dbPassword = null;
		Session session = this.sessionFactory.getCurrentSession();
		String pass_query = "select password from user where email=?";
		Query query = session.createSQLQuery(pass_query);
		query.setParameter(0, email);
		List<String> pwdlist = query.list();

		Iterator<String> itr = pwdlist.iterator();
		while (itr.hasNext()) {
			String password = (String) itr.next();
			System.out.println(password);
			dbPassword = password;
		}
		return dbPassword;
	}

	@Override
	@SuppressWarnings("unchecked")
	public boolean isEmailExists(String email) {
		boolean emailExists = false;
		Session session = this.sessionFactory.getCurrentSession();
		String email_query = "select email from  user where email=?";
		Query query = session.createSQLQuery(email_query);
		query.setParameter(0, email);

		List<String> emailList = query.list();
		if ((emailList.size() > 0) && (emailList != null)) {
			emailExists = true;
		}
		return emailExists;
	}

	@Override
	@SuppressWarnings("unchecked")
	public long getUserIdByEmail(String email) {
		long userId = 0;
		if ((!email.equals("")) && (email != null)) {
			Session session = this.sessionFactory.getCurrentSession();
			Query query = session.createSQLQuery(
					"SELECT userid FROM user WHERE email=?");
			query.setParameter(0, email);
			List<Integer> userIdList = query.list();
			if ((userIdList != null) && (userIdList.size() > 0)) {
				Iterator<Integer> iterator = userIdList.iterator();
				while (iterator.hasNext()) {
					userId = (long) iterator.next();
				}
			}
		}
		return userId;
	}

	@Override
	public User getUserById(long userId) {
		User user = null;
		if (userId > 0) {
			Session session = this.sessionFactory.getCurrentSession();
			user = (User) session.get(User.class, userId);
			System.out.println("Email " + user.getEmail());
		}
		return user;
	}

	@Override
	@SuppressWarnings("unchecked")
	public long getRoleIdByEmail(String email) {
		long roleId = 0;
		if (!email.equals("") && email != null) {
			Session session = this.sessionFactory.getCurrentSession();
			Query query = session.createSQLQuery(
					"select roleid from user where email=?");
			query.setParameter(0, email);
			List<Integer> roleids = query.list();
			if ((roleids.size() > 0) && (roleids != null)) {
				Iterator<Integer> itr = roleids.iterator();
				while (itr.hasNext()) {
					roleId = (long) itr.next();
				}
			}
		}
		return roleId;
	}

	@Override
	@SuppressWarnings("unchecked")
	public String getEmpNameByUserId(long userId) {
		String Emp_Name = null;
		if (userId > 0) {
			Session session = this.sessionFactory.getCurrentSession();
			Query query = session.createSQLQuery(
					"select username from user where userid=?");
			query.setParameter(0, userId);
			List<String> names = query.list();
			if ((names.size() > 0) && (names != null)) {
				Iterator<String> itr = names.iterator();
				Emp_Name = itr.next();
				return Emp_Name;
			}
		}
		return Emp_Name;
	}

	@Override
	@SuppressWarnings("unchecked")
	public String getPasswordByUserId(long userId) {
		String dbpassword = null;
		if (userId > 0) {
			Session session = this.sessionFactory.getCurrentSession();
			Query query = session.createSQLQuery(
					"select password from user where userid=?");
			query.setParameter(0, userId);
			List<String> password = query.list();
			if (password.size() > 0) {
				dbpassword = password.get(0);
				return dbpassword;
			}
		}
		return dbpassword;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
