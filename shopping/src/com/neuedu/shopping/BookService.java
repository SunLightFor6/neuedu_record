package com.neuedu.shopping;

import java.util.List;

/**
 * 服务类，模拟调用DAO类，模拟数据库操作，模拟获得一个list，
 * 代表商品集合
 * @author Sun
 *
 */
public class BookService {
	private List<Book> booksList;
	
	public BookService() {
		this.booksList.add(new Book("Java", 12, 100));
		this.booksList.add(new Book("JSP", 17.5, 100));
		this.booksList.add(new Book("Web前端	", 19, 120));
		this.booksList.add(new Book("Spring", 23, 100));
		this.booksList.add(new Book("SpringMVC", 22.5, 133));
		this.booksList.add(new Book("Mybatis", 12, 100));
		this.booksList.add(new Book("BootStrap从入门到快乐", 10.5, 80));
	}
	
	public BookService(List<Book> booksList) {
		this.booksList = booksList;
	}

	public List<Book> getBooksList() {
		return booksList;
	}

	public void setBooksList(List<Book> booksList) {
		this.booksList = booksList;
	}
	
}
