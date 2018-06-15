package com.neuedu.pro3.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.dao.MessageDao;
import com.neuedu.pro3.util.JDBCUtil;
import com.neuedu.pro3.util.Tools;

//@Repository(value="MessageDao")
@Repository
public class MessageDaoBean implements MessageDao {

	@Override
	public int add(Message message) throws SQLException {
		System.out.println("----MessageDaoBean----add()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "insert into message(id, username, title, context, delivertime, ip) values (message_id.nextval, ?, ?, ?, sysdate, ?)";
		Object[] obj = {message.getUsername(), message.getTitle(), message.getContext(), message.getIp()};
		int count = db.executeUpdate(sql, obj);
		return count;
	}

	@Override
	public List<Message> listAll() throws SQLException {
		System.out.println("----MessageDaoBean----listAll()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "select id, username, title, context, to_char(delivertime, 'yyyy-MM-dd hh24:mi:ss') from message order by id desc";
		ResultSet rs = db.executeQuery(sql);
		List<Message> messages = new ArrayList<Message>();
		while(rs.next()) {
			messages.add(new Message(rs.getInt(1), 
					Tools.stringFilter(rs.getString(2)), 
					Tools.stringFilter(rs.getString(3)), 
					Tools.stringFilter(rs.getString(4)), 
					rs.getString(5)));
		}
		rs.close();
		return messages;
	}

	@Override
	public int delete(int messageid) throws SQLException {
		System.out.println("----MessageDaoBean----delete()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "delete from message where id=?";
		Object[] obj = {messageid};
		int count = db.executeUpdate(sql, obj);
		return count;
	}

}
