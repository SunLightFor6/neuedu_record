package com.neuedu.pro3.dao;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.sun.javafx.collections.MappingChange.Map;

public interface PageDao {
	/**
	 * 查询总记录数
	 */
	public int selectCount() throws Exception;
	/**
	 * 查询结果集
	 */
	public List<Object> selectResults(Page page) throws Exception;
	/**
	 * 条件查询
	 */
	public List<Message> queryResults(Map m) throws Exception;
}
