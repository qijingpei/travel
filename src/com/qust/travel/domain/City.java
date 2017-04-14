package com.qust.travel.domain;
/*
 * 城市的实体类
 */
public class City {
	private String cityid;//城市id
	private String name;//城市名
	private String introduce;//城市介绍
	private String image;//城市图片
	public String getCityid() {
		return cityid;
	}
	public void setCityid(String cityid) {
		this.cityid = cityid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "City [cityid=" + cityid + ", name=" + name + ", introduce="
				+ introduce + ", image=" + image + "]";
	}
	
	
}
