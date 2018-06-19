package com.neuedu.pro3.service.impl;

import java.sql.SQLException;

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
	
	@Override
	public boolean login(User user){
		System.out.println("--- UserServiceBean -- login() ---");
		SqlSession session = SqlSessionUtil.getSession();
		UserDao userDao = session.getMapper(UserDao.class);
		String password_c = "";
		try {
			password_c = userDao.getPasswordByName(user.getName());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		System.out.println("--- UserServiceBean -- login() ---(input) " + user.getPassword() + " (correct)" + password_c);
		if(password_c.equals(user.getPassword())) {
			return true;
		}
		return false;
	}
}
