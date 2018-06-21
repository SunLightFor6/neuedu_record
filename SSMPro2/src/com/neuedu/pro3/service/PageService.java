package com.neuedu.pro3.service;

import java.sql.SQLException;
import java.util.List;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.sun.javafx.collections.MappingChange.Map;

public interface PageService {
	/**
	 * ��ѯ�ܼ�¼��
	 */
	public int selectCount() throws Exception;
	/**
	 * ��ѯ�����
	 */
	public List<Object> selectResults(Page page) throws Exception;
	/**
	 * ����������ܼ�¼���ȷ�װ�������У�����
	 * @param countPerPage
	 * @param currentPage
	 * @return
	 * @throws Exception 
	 */
	public Page getPageBean(int countPerPage, int currentPage) throws Exception;
	
	/**
	 * ����õ���ʾҳ���ҳ���������ʼҳ��
	 * @param page
	 * @return
	 */
	public int getPageBegin(Page page) throws Exception;
	
	/**
	 * ����õ���ʾҳ���ҳ���������ֹҳ��
	 * @param page
	 * @return
	 */
	public int getPageEnd(Page page) throws Exception;
	
	/**
	 * ����������ѯ
	 * @param m
	 * @return
	 */
	public List<Message> queryResults(Map m) throws Exception;
}
