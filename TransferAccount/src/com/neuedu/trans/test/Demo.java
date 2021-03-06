package com.neuedu.trans.test;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.neuedu.trans.bean.UserInfo;
import com.neuedu.trans.util.JDBCUtil;

public class Demo {

	public static void main(String[] args) throws SQLException {
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "select * from USERINFO";
		ResultSet rs = db.executeQuery(sql);
		System.out.println(rs);
		while(rs.next()) {
			System.out.println("11");
			UserInfo user = new UserInfo();
			user.setId(rs.getInt(1));
			user.setBalance(rs.getDouble("balance"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setOther(rs.getString(5));
			System.out.println(user.getId() + "\t" + user.getName() + "\t" + user.getBalance() + "\t" + user.getPassword() + "\t" + user.getOther());
		}
		rs.close();
		db.close();
	}

}
