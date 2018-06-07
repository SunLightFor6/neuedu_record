package com.neuedu.pro1.service.impl;

import java.util.List;

import com.neuedu.pro1.bean.UserInfo;
import com.neuedu.pro1.dao.UserInfoDao;
import com.neuedu.pro1.dao.impl.UserInfoDaoBean;
import com.neuedu.pro1.service.UserInfoService;

public class UserInfoServiceBean implements UserInfoService {

	public UserInfoServiceBean() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean add(UserInfo u) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<UserInfo> findAll() {
		System.out.println("...UserinfoServiceBean......findAll()...");
		UserInfoDao dao=new UserInfoDaoBean();
		try {
			dao.findAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean isLoginOK(String userName, String pwd) {
		// TODO Auto-generated method stub
		return false;
	}

}
