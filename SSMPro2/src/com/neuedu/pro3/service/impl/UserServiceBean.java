package com.neuedu.pro3.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.pro3.bean.User;
import com.neuedu.pro3.dao.UserDao;
import com.neuedu.pro3.service.UserService;
import com.neuedu.pro3.util.JDBCUtil;
import com.neuedu.pro3.util.SqlSessionUtil;

@Service
public class UserServiceBean implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public boolean login(User user) throws Exception {
		System.out.println("--- UserServiceBean -- login() ---");
		String password_c = "";
		password_c = userDao.getPasswordByName(user.getName());
		System.out.println("--- UserServiceBean -- login() ---(input) " + user.getPassword() + " (correct)" + password_c);
		if(password_c.equals(user.getPassword())) {
			return true;
		}
		return false;
	}

	@Override
	public List<User> listAll() throws Exception {
		System.out.println("--- UserServiceBean -- login() ---");
		return userDao.listAll();
	}

	@Override
	public int addUser(User user) throws Exception {
		int a = -1;
		a = userDao.addUser(user);
		return a;
	}
}
