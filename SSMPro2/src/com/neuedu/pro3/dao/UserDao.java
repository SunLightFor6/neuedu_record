package com.neuedu.pro3.dao;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.User;

/**
 * UserDao ÓÃ»§Dao
 * @author Sun
 */
public interface UserDao {
	public String getPasswordByName(String name) throws Exception;
	public List<User> listAll() throws Exception;
	public int addUser(User user) throws Exception;
}
