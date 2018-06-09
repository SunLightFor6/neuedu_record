package com.neuedu.pro1.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.neuedu.pro1.bean.UserInfo;
import com.neuedu.pro1.dao.UserInfoDao;
import com.neuedu.pro1.util.JDBCUtil;

public class UserInfoDaoBean implements UserInfoDao {

	public UserInfoDaoBean() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int add(UserInfo u) throws Exception {
		System.out.println("...UserinfoDaoBean......add()...");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "insert into userinfo(id, name, password, balance, other) values(?, ?, ?, ?, ?)";
		Object[] obj = {u.getId(), u.getName(), u.getPassword(), u.getBalance(), u.getOther()};
		int count = db.executeUpdate(sql, obj);
		return count;
	}

	@Override
	public List<UserInfo> findAll() throws Exception {
		System.out.println("...UserinfoDaoBean......findAll()...");
		JDBCUtil db = new JDBCUtil();
		List<UserInfo> userList = new ArrayList<UserInfo>();
		db.getConnection();
		String sql = "select * from userinfo";
		ResultSet rs = db.executeQuery(sql);
		while(rs.next()) {
			UserInfo user = new UserInfo();
			user.setId(rs.getInt(1));
			user.setName(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setBalance(rs.getDouble(4));
			user.setOther(rs.getString(5));
			userList.add(user);
		}
		return userList;
	}

}
