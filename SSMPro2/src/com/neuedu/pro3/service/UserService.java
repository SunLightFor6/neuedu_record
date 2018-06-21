package com.neuedu.pro3.service;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.User;

/**
 * Service
 * @author Sun
 */
public interface UserService {
	public boolean login(User user) throws Exception;
	public List<User> listAll() throws Exception;
	public int addUser(User user) throws Exception;
}
