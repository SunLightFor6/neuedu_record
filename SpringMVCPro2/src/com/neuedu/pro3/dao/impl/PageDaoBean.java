package com.neuedu.pro3.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.pro3.bean.Message;
import com.neuedu.pro3.bean.Page;
import com.neuedu.pro3.dao.PageDao;
import com.neuedu.pro3.util.JDBCUtil;
import com.neuedu.pro3.util.Tools;

@Repository	
//@Repository(value="PageDao")
public class PageDaoBean implements PageDao {

	@Override
	public int selectCount(Page page) throws SQLException {
		System.out.println("----PageDaoBean----selectCount()----");
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "select count(1) total from (select * from message)";
		System.out.println(sql);
		ResultSet rs = db.executeQuery(sql);
		int count = -1;
		while(rs.next()) {
			count = rs.getInt(1);
		}
		rs.close();
		return count;
	}

	@Override
	public List<Object> selectResults(Page page) throws SQLException {
		System.out.println("----PageDaoBean----selectResults()----");
		List<Object> results = new ArrayList<Object>();
		JDBCUtil db = new JDBCUtil();
		db.getConnection();
		String sql = "select * from ("
				+ "select rownum rn,t.* from ("
					+ "select id, username, title, context, to_char(delivertime, 'yyyy-MM-dd hh24:mi:ss') "
					+ "from message order by id desc) t "
					+ "where rownum<=" + page.getCurrentPage() * page.getCountPerPage() + ")  "
				+ "where rn >" + ((page.getCurrentPage()-1) * page.getCountPerPage());
		System.out.println(sql);
		ResultSet rs = db.executeQuery(sql);
		while(rs.next()) {
			results.add(new Message(rs.getInt(2), 
					Tools.stringFilter(rs.getString(3)), 
					Tools.stringFilter(rs.getString(4)), 
					Tools.stringFilter(rs.getString(5)), 
					rs.getString(6)));
		}
		rs.close();
		return results;
	}

}
