package com.neuedu.pro3.dao;

import java.sql.SQLException;

/**
 * UserDao �û�Dao
 * @author Sun
 */
public interface UserDao {
	public String getPasswordByName(String name) throws SQLException;
}
