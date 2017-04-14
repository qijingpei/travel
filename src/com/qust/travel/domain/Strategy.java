package com.qust.travel.domain;

import java.util.Date;

/*
 * 攻略的实体类
 */
public class Strategy {
	private String cstid;//攻略id
	private String simage;//封面图片
	private String title;
	
	private Date time;
	private int pageview;//浏览量
	private String content;
	private City city;
	private User user;
	//档City和User实体类不好用时，可以用cityid和userid
	//当通过cityid查询到city时，可以用cityid（userid同理）
	private String cityid;
	private String userid;
	
	
	public String getCityid() {
		return cityid;
	}
	public void setCityid(String cityid) {
		this.cityid = cityid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCstid() {
		return cstid;
	}
	public void setCstid(String cstid) {
		this.cstid = cstid;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}

	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getPageview() {
		return pageview;
	}
	public void setPageview(int pageview) {
		this.pageview = pageview;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Strategy [cstid=" + cstid + ", simage=" + simage + ", title="
				+ title + ", time=" + time + ", pageview=" + pageview
				+ ", content=" + content + ", city=" + city + ", user=" + user
				+ "]";
	}
	
	
	
	
}
