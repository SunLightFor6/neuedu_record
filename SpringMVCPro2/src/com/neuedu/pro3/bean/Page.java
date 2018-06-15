package com.neuedu.pro3.bean;

import java.util.List;

/**
 * ��ҳbean �洢��ҳ��ص�����
 * �ĳɵ���ģʽ
 * @author Sun
 */

public class Page {
	/**
	 * �ڼ�ҳ
	 */
	int currentPage;
	/**
	 * ÿҳ��¼��
	 */
	int countPerPage;
	/**
	 * ��ѯ�����ܼ�¼��
	 */
	int count;
	/**
	 * ��ѯ������ҳ��
	 */
	int pageCount;
	/**
	 * ��ǰ��ѯ�Ľ����
	 */
	List<Object> results;
	/**
	 * ��ǰҳ������ͷ
	 */
	int pageBegin;
	/**
	 * ��ǰҳ������β
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
	 * ���� ��ȡʵ��
	 */
	public static Page getPageBean() {
		return pageBean;
	}
	
}
/* ����˼·
 * Page Dao ���������ݿ��ѯ  ����page����
 * PageService ������dao������  ��ѯ ���ؽ����
 * Servlet ����servlet�л�ȡ���ݵķ���  �����������session�� session������ҳ��
 * ��ʾ�����ҳ����ʾ
 */