package com.neuedu.shopping;

import java.util.ArrayList;
import java.util.List;

/**
 * �����࣬ģ�����DAO�࣬ģ�����ݿ������ģ����һ��list��
 * ������Ʒ����
 * @author Sun
 *
 */
public class BookService {
	private List<Book> booksList = new ArrayList<Book>();
	
	public BookService() {
		this.booksList.add(new Book("Java", 12, 100));
		this.booksList.add(new Book("JSP", 17.5, 100));
		this.booksList.add(new Book("Webcss/js ", 19, 120));
		this.booksList.add(new Book("Spring", 23, 100));
		this.booksList.add(new Book("Spring MVC", 22.5, 133));
		this.booksList.add(new Book("Mybatis", 12, 100));
		this.booksList.add(new Book("BootStrap", 10.5, 80));
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
	
	public Book getByName(String name) {
		for(Book book : booksList) {
			if(book.getName().equals(name)) {
				return book;
			}
		}
		return null;
	}
	
}
