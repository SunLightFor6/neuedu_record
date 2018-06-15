package com.neuedu.pro3.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.dao.MessageDao;
import com.neuedu.pro3.service.MessageService;
import com.neuedu.pro3.util.JDBCUtil;
import com.neuedu.pro3.util.Tools;

//@Service(value="MessageService")
@Service
public class MessageServiceBean implements MessageService {
	
//	@Resource(name="MessageDao")
	@Autowired
	private MessageDao messageDao;
	
	@Override
	public int add(Message message) {
		System.out.println("----MessageServiceBean----add()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		int count = 0;
//		message.setContext(Tools.stringFilter(message.getContext()));
//		message.setTitle(Tools.stringFilter(message.getTitle()));
//		message.setUsername(Tools.stringFilter(message.getUsername()));
		try {
			count = messageDao.add(message);
		} catch (SQLException e) {
			count = 0;
			e.printStackTrace();
		} finally {
			db.close();
		}
		return count;
	}

	@Override
	public List<Message> listAll() {
		System.out.println("----MessageServiceBean----listAll()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		List<Message> messages = new ArrayList<Message>();
		try {
			messages = messageDao.listAll();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return messages;
	}

	@Override
	public int delete(int messageid) {
		System.out.println("----MessageServiceBean----delete()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		int count = 0;
		try {
			count = messageDao.delete(messageid);
		} catch (SQLException e) {
			count = 0;
			e.printStackTrace();
		} finally {
			db.close();
		}
		return count;
	}

}
