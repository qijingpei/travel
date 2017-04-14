package com.qust.travel.domain;

public class Partner {
	private int fpaid;//id
	private String title;//标题
	
	private String simage;//封面的小图片
	private String startPlace;//出发地
	private String endPlace;//目的地
	private String startTime;//出发时间
	private int days;//持续时间（天数）
	private int signinNumber;//已申请人数（现在做起来有点小难）
	private boolean sex;//性别是否为男性：true为男，false为女
	private String phoneNumber;//联系方式（手机号、微信、qq都可以）
	private String introduce;//保存成html代码的用户编写的同行介绍的内容
	private User user;//这条同行驴友的招募信息属于哪一个用户
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getFpaid() {
		return fpaid;
	}
	public void setFpaid(int fpaid) {
		this.fpaid = fpaid;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
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
	public int getSigninNumber() {
		return signinNumber;
	}
	public void setSigninNumber(int signinNumber) {
		this.signinNumber = signinNumber;
	}
	public boolean isSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Partner [fpaid=" + fpaid + ", title=" + title + ", simage="
				+ simage + ", startPlace=" + startPlace + ", endPlace="
				+ endPlace + ", startTime=" + startTime + ", days=" + days
				+ ", signinNumber=" + signinNumber + ", sex=" + sex
				+ ", phoneNumber=" + phoneNumber + ", introduce=" + introduce
				+ ", user=" + user + "]";
	}
	
	
	
}
