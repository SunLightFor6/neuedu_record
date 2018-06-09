package com.neuedu.pro1.dao;

import java.util.List;

import com.neuedu.pro1.bean.UserInfo;

public interface UserInfoDao {
	public int add(UserInfo u) throws Exception;
	public List<UserInfo> findAll() throws Exception;
}