package com.neusoft.service.impl;

import java.util.List;

import com.neusoft.bean.Userinfo;
import com.neusoft.dao.UserinfoDao;
import com.neusoft.dao.impl.UserinfoDaoBean;
import com.neusoft.service.UserinfoService;

public class UserinfoServiceBean implements UserinfoService {

	@Override
	public boolean add(Userinfo u) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Userinfo> findAll() {
		System.out.println("...UserinfoServiceBean......findAll()...");
		UserinfoDao dao=new UserinfoDaoBean();
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
