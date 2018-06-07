package com.neuedu.pro1.dao.impl;

import java.util.List;

import com.neuedu.pro1.bean.UserInfo;
import com.neuedu.pro1.dao.UserInfoDao;

public class UserInfoDaoBean implements UserInfoDao {

	public UserInfoDaoBean() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int add(UserInfo u) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserInfo> findAll() throws Exception {
		System.out.println("....UserinfoDaoBean.....findAll().....");
		return null;
	}

	@Override
	public String findPwdByUsername(String userName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
