package com.neuedu.pro3.service;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;

public interface PageService {
	/**
	 * ��ѯ�ܼ�¼��
	 */
	public int selectCount(Page page);
	/**
	 * ��ѯ�����
	 */
	public List<Message> selectResults(Page page);
	/**
	 * ����������ܼ�¼���ȷ�װ�������У�����
	 * @param countPerPage
	 * @param currentPage
	 * @return
	 */
	public Page getPageBean(int countPerPage, int currentPage);
	
	/**
	 * ����õ���ʾҳ���ҳ���������ʼҳ��
	 * @param page
	 * @return
	 */
	public int getPageBegin(Page page);
	
	/**
	 * ����õ���ʾҳ���ҳ���������ֹҳ��
	 * @param page
	 * @return
	 */
	public int getPageEnd(Page page);
}
