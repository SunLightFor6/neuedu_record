package com.neuedu.pro3.dao;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;

public interface PageDao {
	/**
	 * ��ѯ�ܼ�¼��
	 */
	public int selectCount(Page page) throws SQLException;
	/**
	 * ��ѯ�����
	 */
	public List<Object> selectResults(Page page) throws SQLException;
	
}
