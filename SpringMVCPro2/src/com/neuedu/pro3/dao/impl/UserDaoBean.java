package com.neuedu.pro3.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.neuedu.pro3.dao.UserDao;
import com.neuedu.pro3.util.JDBCUtil;

@Repository
class UserDaoBean implements UserDao {

	@Override
	public String getPasswordByName(String name) throws SQLException {
		System.out.println("--- UserDaoBean -- getPasswordByName() ---name: " + name);
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "select password from userinfo where name=?";
		Object[] obj = {name};
		ResultSet rs = db.executeQuery(sql, obj);
		String password = "";
		while(rs.next()) {
			password = rs.getString(1);
		}
		System.out.println("--- UserDaoBean -- getPasswordByName() --- get: " + password);
		return password;
	}

}
