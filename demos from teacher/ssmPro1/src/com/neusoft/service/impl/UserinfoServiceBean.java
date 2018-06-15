package com.neusoft.service.impl;

import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.UserinfoMapper;
import com.neusoft.mybatis.SqlSessionUtil;
import com.neusoft.po.Userinfo;
import com.neusoft.service.UserinfoService;

@Service
public class UserinfoServiceBean implements UserinfoService {
	
//	@Autowired
//	UserinfoMapper userinfoMapper;
	
	@Override
	public List<Userinfo> findAll() {
		System.out.println("...UserinfoServiceBean......findAll().......");
		List<Userinfo> list;
		SqlSession session=SqlSessionUtil.getSession();
		try {
			UserinfoMapper mapper=session.getMapper(UserinfoMapper.class);
			list = mapper.findAll();
		} catch (Exception e) {
			list=null;
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public boolean zhuanZhang(String name_a, String name_b, int num) {
		// TODO Auto-generated method stub
		return false;
	}

}
