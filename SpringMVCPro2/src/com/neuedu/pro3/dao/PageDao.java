package com.neuedu.pro3.dao;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;

public interface PageDao {
	/**
	 * 查询总记录数
	 */
	public int selectCount(Page page) throws SQLException;
	/**
	 * 查询结果集
	 */
	public List<Object> selectResults(Page page) throws SQLException;
	
}
