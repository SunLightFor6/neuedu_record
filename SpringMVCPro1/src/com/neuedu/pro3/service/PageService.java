package com.neuedu.pro3.service;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;

public interface PageService {
	/**
	 * 查询总记录数
	 */
	public int selectCount(Page page);
	/**
	 * 查询结果集
	 */
	public List<Message> selectResults(Page page);
	/**
	 * 将结果集、总记录数等封装到对象中，返回
	 * @param countPerPage
	 * @param currentPage
	 * @return
	 */
	public Page getPageBean(int countPerPage, int currentPage);
	
	/**
	 * 计算得到显示页面的页码区间的起始页码
	 * @param page
	 * @return
	 */
	public int getPageBegin(Page page);
	
	/**
	 * 计算得到显示页面的页码区间的终止页码
	 * @param page
	 * @return
	 */
	public int getPageEnd(Page page);
}
