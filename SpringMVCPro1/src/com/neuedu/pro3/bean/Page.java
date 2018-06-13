package com.neuedu.pro3.bean;

import java.util.List;

/**
 * 分页bean 存储分页相关的内容
 * 改成单例模式
 * @author Sun
 */

public class Page {
	/**
	 * 第几页
	 */
	int currentPage;
	/**
	 * 每页记录数
	 */
	int countPerPage;
	/**
	 * 查询出的总记录数
	 */
	int count;
	/**
	 * 查询出的总页数
	 */
	int pageCount;
	/**
	 * 当前查询的结果集
	 */
	List<Object> results;
	/**
	 * 当前页面区间头
	 */
	int pageBegin;
	/**
	 * 当前页面区间尾
	 */
	int pageEnd;
	
	private static Page pageBean = new Page();
	
	/**
	 * @return the pageBegin
	 */
	public int getPageBegin() {
		return pageBegin;
	}

	/**
	 * @param pageBegin the pageBegin to set
	 */
	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}

	/**
	 * @return the pageEnd
	 */
	public int getPageEnd() {
		return pageEnd;
	}

	/**
	 * @param pageEnd the pageEnd to set
	 */
	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	private Page(){
		this.currentPage = -1;
		this.countPerPage = -1;
	}
	private Page(int currentPage, int countPerPage) {
		this.currentPage = currentPage;
		this.countPerPage = countPerPage;
	}

	/**
	 * @return the page
	 */
	public int getCurrentPage() {
		return currentPage;
	}

	/**
	 * @param page the page to set
	 */
	public void setCurrentPage(int page) {
		this.currentPage = page;
	}

	/**
	 * @return the countPerPage
	 */
	public int getCountPerPage() {
		return countPerPage;
	}

	/**
	 * @param countPerPage the countPerPage to set
	 */
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}

	/**
	 * @return the pageCount
	 */
	public int getPageCount() {
		return pageCount;
	}

	/**
	 * @param pageCount the pageCount to set
	 */
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	/**
	 * @return the results
	 */
	public List<Object> getResults() {
		return results;
	}

	/**
	 * @param results the results to set
	 */
	public void setResults(List<Object> results) {
		this.results = results;
	}
	
	/**
	 * 单例 获取实例
	 */
	public static Page getPageBean() {
		return pageBean;
	}
	
}
/* 整体思路
 * Page Dao 中连接数据库查询  返回page对象
 * PageService 中利用dao的数据  查询 返回结果集
 * Servlet 调用servlet中获取数据的方法  将结果集传到session中 session还存有页码
 * 显示层根据页码显示
 */