package com.neuedu.pro3.service;

import java.sql.SQLException;

import com.neuedu.pro3.bean.User;

/**
 * Service
 * @author Sun
 */
public interface UserService {
	public boolean login(User user);
}
