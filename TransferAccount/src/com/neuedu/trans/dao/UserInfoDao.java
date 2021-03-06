package com.neuedu.trans.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.neuedu.trans.util.JDBCUtil;

public class UserInfoDao {
	
	public String getPasswordByName(String name) throws SQLException {
		String password = "";
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "select PASSWORD from USERINFO where NAME = ?";
		Object[] obj = {name};
		ResultSet rs = db.executeQuery(sql, obj);
		if(rs.next()) {
			password = rs.getString(1);
		}
		rs.close();
		return password;
	}
	
	public int addBalance(String name, double num) throws SQLException {
		System.out.println("DAO -- addBalance()");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "update USERINFO set balance = balance + ? where name = ?";
		Object[] obj = {num, name};
		int count = db.executeUpdate(sql, obj);
		return count;
	}
	
	public int decBalance(String name, double num) throws SQLException {
		System.out.println("DAO -- decBalance()");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "update USERINFO set balance = balance - ? where name = ?";
		Object[] obj = {num, name};
		int count = db.executeUpdate(sql, obj);
		return count;
	}
	
	/**
	 * 传入name 从数据库中读取其balance信息
	 * @param name
	 * @return
	 * @throws SQLException 
	 */
	public double getBalance(String name) throws SQLException, NullPointerException {
		System.out.println("DAO -- getBalance()");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "select balance from userinfo where name = ?";
		Object[] obj = {name};
		ResultSet rs = db.executeQuery(sql, obj);
		Double balance = null;
		while(rs.next()) {
			balance = rs.getDouble(1);
		}
		rs.close();
		return balance;
	}
}
