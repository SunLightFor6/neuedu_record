package com.neuedu.pro3.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.neuedu.pro3.dao.PageDao;
import com.neuedu.pro3.service.PageService;
import com.neuedu.pro3.util.JDBCUtil;
import com.neuedu.pro3.util.SqlSessionUtil;
import com.neuedu.pro3.util.Tools;
import com.sun.javafx.collections.MappingChange.Map;

@Service
public class PageServiceBean implements PageService {
	
	@Autowired
	private PageDao pageDao;
	
	@Override
	public int selectCount() throws Exception {
		System.out.println("----PageServiceBean----selectCount()----");
		int count;
		count = pageDao.selectCount();
		return count;
	}

	@Override
	public List<Object> selectResults(Page page) throws Exception {
		System.out.println("----PageServiceBean----selectResults()----");
		List<Object> results = new ArrayList<Object>();
		results = pageDao.selectResults(page);
		//处理一下已经在数据库中存在的异常数据 输出的时候操作
		for(Object obj : results) {
			Message message = (Message) obj;
			if(message.getId() > 1200 && message.getId() <= 1300) {
				message.setTitle(Tools.stringFilter(message.getTitle()));
				message.setContext(Tools.stringFilter(message.getContext()));
				message.setUsername(Tools.stringFilter(message.getUsername()));
			}
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
	public Page getPageBean(int countPerPage, int currentPage) throws Exception {
		System.out.println("----PageServiceBean----getPageBean()----");
		Page pageBean = Page.getPageBean();
		pageBean.setCurrentPage(currentPage);
		pageBean.setCountPerPage(countPerPage);
		pageBean.setCount(this.selectCount());
		int pageCount = -1;
		if (pageBean.getCount() % pageBean.getCountPerPage() == 0) {
			pageCount =  pageBean.getCount() / pageBean.getCountPerPage();
		} else {
			pageCount =  1 + pageBean.getCount() / pageBean.getCountPerPage();
		}
		pageBean.setPageCount(pageCount);
		List<Object> results = this.selectResults(pageBean);
		if (results.size() == 0) {
			if (currentPage >= pageCount) {
				pageBean.setCurrentPage(currentPage-1);
				results = this.selectResults(pageBean);
			}
		}
		pageBean.setPageBegin(this.getPageBegin(pageBean));
		pageBean.setPageEnd(this.getPageEnd(pageBean));
		return pageBean;
	}

	@Override
	public List<Message> queryResults(Map m)  throws Exception {
		System.out.println("----PageServiceBean----queryResults()----");
		List<Message> results;
		try {
			results = pageDao.queryResults(m);
		} catch (Exception e) {
			results = null;
			e.printStackTrace();
		}
		return results;
	}
}
