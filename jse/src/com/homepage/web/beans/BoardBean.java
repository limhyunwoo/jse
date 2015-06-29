package com.homepage.web.beans;

public class BoardBean {
	
	String brd_type ="",  brd_category ="",brd_title ="",brd_content ="",user_id ="";
	int  brd_no =0;
	String  brd_date ="";
	int brd_views =0;
	
	public String getBrd_type() {
		return brd_type;
	}
	public void setBrd_type(String brd_type) {
		this.brd_type = brd_type;
	}
	public String getBrd_category() {
		return brd_category;
	}
	public void setBrd_category(String brd_category) {
		this.brd_category = brd_category;
	}
	public String getBrd_title() {
		return brd_title;
	}
	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}
	public String getBrd_date() {
		return brd_date;
	}
	public void setBrd_date(String brd_date) {
		this.brd_date = brd_date;
	}
	public int getBrd_views() {
		return brd_views;
	}
	public void setBrd_views(int brd_views) {
		this.brd_views = brd_views;
	}
	

}
