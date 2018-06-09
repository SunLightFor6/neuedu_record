package com.neuedu.pro1.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.neuedu.pro1.bean.UserInfo;
import com.neuedu.pro1.dao.UserInfoDao;
import com.neuedu.pro1.dao.impl.UserInfoDaoBean;
import com.neuedu.pro1.service.UserInfoService;
import com.neuedu.pro1.util.JDBCUtil;

public class UserInfoServiceBean implements UserInfoService {
	
	private UserInfoDao userInfoDao;
	//以getter/setter方法为基准   Spring来实例化UserInfoDao对象
	
	/**
	 * @return the dao
	 */
	public UserInfoDao getUserInfoDao() {
		return userInfoDao;
	}

	/**
	 * @param dao the dao to set
	 */
	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}

	public UserInfoServiceBean() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean add(UserInfo u) {
		System.out.println("...UserinfoServiceBean......add()...");
		boolean finished = false;
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		try {
			int count = userInfoDao.add(u);
			if(count != 0) {
				finished = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return finished;
	}

	@Override
	public List<UserInfo> findAll() {
		System.out.println("...UserinfoServiceBean......findAll()...");
		List<UserInfo> userList = new ArrayList<UserInfo>();
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		try {
			userList = userInfoDao.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return userList;
	}
}
