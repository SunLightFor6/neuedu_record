package com.neuedu.pro3.service.impl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.pro3.bean.User;
import com.neuedu.pro3.dao.UserDao;
import com.neuedu.pro3.service.UserService;
import com.neuedu.pro3.util.JDBCUtil;

@Service
public class UserServiceBean implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public boolean login(User user){
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		System.out.println("--- UserServiceBean -- login() ---");
		String password_c = "";
		try {
			password_c = userDao.getPasswordByName(user.getName());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.close();
		}
		
		System.out.println("--- UserServiceBean -- login() ---(input) " + user.getPassword() + " (correct)" + password_c);
		if(password_c.equals(user.getPassword())) {
			return true;
		}
		return false;
	}
}
