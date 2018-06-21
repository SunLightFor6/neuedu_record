package com.neuedu.pro3.dao;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.sun.javafx.collections.MappingChange.Map;

public interface PageDao {
	/**
	 * ��ѯ�ܼ�¼��
	 */
	public int selectCount() throws Exception;
	/**
	 * ��ѯ�����
	 */
	public List<Object> selectResults(Page page) throws Exception;
	/**
	 * ������ѯ
	 */
	public List<Message> queryResults(Map m) throws Exception;
}
