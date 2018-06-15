package com.neuedu.pro3.bean;

public class Message {
	private int id;
	private String username;
	private String title;
	private String context;
	private String delivertime;
	private String ip;
	
	public Message(){}
	
	public Message(String username, String title, String context) {
		this.username = username;
		this.title = title;
		this.context = context;
	}

	public Message(int id, String username, String title, String context, String delivertime) {
		this.id = id;
		this.username = username;
		this.title = title;
		this.context = context;
		this.delivertime = delivertime;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the context
	 */
	public String getContext() {
		return context;
	}
	/**
	 * @param context the context to set
	 */
	public void setContext(String context) {
		this.context = context;
	}
	/**
	 * @return the delivertime
	 */
	public String getdelivertime() {
		return delivertime;
	}
	/**
	 * @param delivertime the delivertime to set
	 */
	public void setdelivertime(String delivertime) {
		this.delivertime = delivertime;
	}
	/**
	 * @return the ip
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * @param ip the ip to set
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}

	@Override
	public String toString() {
		return this.id + " " + this.username + " " + this.title + "\n"
				+ this.context + " " + this.delivertime + " " + this.ip;
	}
}
