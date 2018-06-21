package com.neuedu.pro3.dao;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;

public interface MessageDao {
	public int add(Message message) throws Exception;
//	public List<Message> listAll() throws SQLException;
	public int delete(int messageId) throws Exception;
}
