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

//@Service(value="MessageService")
@Service
public class MessageServiceBean implements MessageService {
	
	@Override
	public int add(Message message) {
		System.out.println("----MessageServiceBean----add()----");
		int c = -1;
		SqlSession session = SqlSessionUtil.getSession();
		MessageDao messageDao = session.getMapper(MessageDao.class);
		try {
			c = messageDao.add(message);
			if (c > 0) {
				System.out.println("----MessageServiceBean----add()----commit");
				session.commit();
			} else {
				System.out.println("----MessageServiceBean----add()----rollback");
				session.rollback();
			}
		} catch (SQLException e) {
			session.rollback();
			e.printStackTrace();
		} catch (NullPointerException ne) {
			session.rollback();
		}finally {
			session.close();
		}
		return c;
	}

	@Override
	public int delete(int messageid) {
		System.out.println("----MessageServiceBean----delete()----");
		SqlSession session = SqlSessionUtil.getSession();
		MessageDao messageDao = session.getMapper(MessageDao.class);
		int count = -1;
		try {
			count = messageDao.delete(messageid);
			if (count > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} catch (SQLException e) {
			session.rollback();
			e.printStackTrace();
		} catch (NullPointerException ne) {
			session.rollback();
		}finally {
			session.close();
		}
		return count;
	}
}
