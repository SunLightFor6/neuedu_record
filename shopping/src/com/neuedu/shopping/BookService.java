package com.neuedu.shopping;

import java.util.List;

/**
 * �����࣬ģ�����DAO�࣬ģ�����ݿ������ģ����һ��list��
 * ������Ʒ����
 * @author Sun
 *
 */
public class BookService {
	private List<Book> booksList;
	
	public BookService() {
		this.booksList.add(new Book("Java", 12, 100));
		this.booksList.add(new Book("JSP", 17.5, 100));
		this.booksList.add(new Book("Webǰ��	", 19, 120));
		this.booksList.add(new Book("Spring", 23, 100));
		this.booksList.add(new Book("SpringMVC", 22.5, 133));
		this.booksList.add(new Book("Mybatis", 12, 100));
		this.booksList.add(new Book("BootStrap�����ŵ�����", 10.5, 80));
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
