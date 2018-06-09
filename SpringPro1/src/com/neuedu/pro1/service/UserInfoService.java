package com.neuedu.pro1.service;

import java.util.List;

import com.neuedu.pro1.bean.UserInfo;

public interface UserInfoService {
	public boolean add(UserInfo u);
	public List<UserInfo> findAll();
}
