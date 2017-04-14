package com.qust.travel.domain;
/*
 * 旅游项目的实体类
 */
public class TravelItem {
	private  int titid;
	private String simage;
	private String title;
	private int price;
	private String startTime;
	private int days;
	private String startPlace;
	private String endPlace;
	
	private String content;//内容
	private int tagid;//外键引用旅行社中的主键，在用户这里没有什么用处
	public int getTitid() {
		return titid;
	}
	public void setTitid(int titid) {
		this.titid = titid;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public String getStartPlace() {
		return startPlace;
	}
	public void setStartPlace(String startPlace) {
		this.startPlace = startPlace;
	}
	public String getEndPlace() {
		return endPlace;
	}
	public void setEndPlace(String endPlace) {
		this.endPlace = endPlace;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getTagid() {
		return tagid;
	}
	public void setTagid(int tagid) {
		this.tagid = tagid;
	}
	@Override
	public String toString() {
		return "TravelItem [titid=" + titid + ", simage=" + simage + ", title="
				+ title + ", price=" + price + ", startTime=" + startTime
				+ ", days=" + days + ", startPlace=" + startPlace
				+ ", endPlace=" + endPlace + ", content=" + content
				+ ", tagid=" + tagid + "]";
	}
	
	

}
