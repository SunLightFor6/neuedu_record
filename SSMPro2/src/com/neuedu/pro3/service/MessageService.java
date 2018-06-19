package com.neuedu.pro3.service;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;

public interface MessageService {
	public int add(Message message);
	public int delete(int messageid);
}
