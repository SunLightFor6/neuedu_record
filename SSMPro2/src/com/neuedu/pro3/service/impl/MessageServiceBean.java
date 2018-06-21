package com.neuedu.pro3.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.dao.MessageDao;
import com.neuedu.pro3.service.MessageService;
import com.neuedu.pro3.util.JDBCUtil;
import com.neuedu.pro3.util.SqlSessionUtil;
import com.neuedu.pro3.util.Tools;

@Service
public class MessageServiceBean implements MessageService{

	@Autowired
	private MessageDao messageDao;

	@Override
	public int add(Message message) throws Exception {
		System.out.println("----MessageServiceBean----add()----");
		int c = -1;
		try {
			c = messageDao.add(message);
			if (c > 0) {
				System.out.println("----MessageServiceBean----add()----commit");
			} else {
				System.out.println("----MessageServiceBean----add()----rollback");
			}
		} catch (Exception e) {
			System.out.println("----MessageServiceBean----add()----rollback");
			e.printStackTrace();
		}
		
//		Integer.parseInt("sss");
//		Message m = new Message();
//		m.setTitle("test");
//		m.setUsername("test");
//		m.setContext("test");
//		try {
//			messageDao.add(m);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return c;
	}

	@Override
	public int delete(int messageid) throws Exception{
		System.out.println("----MessageServiceBean----delete()----");
		int count = -1;
		try {
			count = messageDao.delete(messageid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
}
