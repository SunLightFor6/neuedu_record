package com.neuedu.pro3.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.neuedu.pro3.dao.PageDao;
import com.neuedu.pro3.service.PageService;
import com.neuedu.pro3.util.JDBCUtil;

@Service(value="PageService")
public class PageServiceBean implements PageService {

	@Resource(name="PageDao")
	private PageDao pageDao;	
	
	@Override
	public int selectCount(Page page) {
		System.out.println("----PageServiceBean----selectCount()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		int count = 0;
		try {
			count = pageDao.selectCount(page);
		} catch (SQLException e) {
			count = -1;
			e.printStackTrace();
		} finally {
			db.close();
		}
		return count;
	}

	@Override
	public List<Message> selectResults(Page page) {
		System.out.println("----PageServiceBean----selectResults()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		List<Message> results = new ArrayList<Message>();
		try {
			System.out.println("----" + page.getCurrentPage() + " " + page.getCountPerPage());
			results = pageDao.selectResults(page);
			System.out.println("----PageServiceBean----selectResults()----has " + results.size());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return results;
	}
	
	@Override
	public int getPageBegin(Page page) {
		int beginPage = -1;
		int currentPage = page.getCurrentPage();
		if(currentPage == 1) {
			beginPage = -1;
		} else if (currentPage - 4 <= 1) {
			beginPage = 1;
		} else if (currentPage == page.getPageCount()) {
			beginPage = page.getPageCount() - 9;
		} else if (currentPage + 4 >= page.getPageCount()) {
			beginPage = page.getPageCount() - 9;
		} else {
			beginPage = currentPage - 4;
		}
		return beginPage;
	}
	@Override
	public int getPageEnd(Page page) {
		int endPage = -1;
		int currentPage = page.getCurrentPage();
		if (currentPage == page.getPageCount()) {
			endPage = -1;
		}else if (currentPage + 4 >= page.getPageCount()) {
			endPage = page.getPageCount();
		} else if(currentPage == 1) {
			endPage = 9;
		} else if (currentPage - 4 <= 1) {
			endPage = 9;
		} else {
			endPage = currentPage + 4;
		}
		return endPage;
	}

	@Override
	public Page getPageBean(int countPerPage, int currentPage) {
		System.out.println("----PageServiceBean----getPageBean()----");
		Page pageBean = new Page(currentPage, countPerPage);
		pageBean.setCount(this.selectCount(pageBean));
		int pageCount = -1;
		if (pageBean.getCount() % pageBean.getCountPerPage() == 0) {
			pageCount =  pageBean.getCount() / pageBean.getCountPerPage();
		} else {
			pageCount =  1 + pageBean.getCount() / pageBean.getCountPerPage();
		}
		pageBean.setPageCount(pageCount);
		pageBean.setResults(this.selectResults(pageBean));
		pageBean.setPageBegin(this.getPageBegin(pageBean));
		pageBean.setPageEnd(this.getPageEnd(pageBean));
		return pageBean;
	}
}
