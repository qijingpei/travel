package com.qust.travel.domain;

public class Attraction {
	private String attid;
	private String name;
	private String position;
	private String image;
    private String introduce;
	private City ccity;
	private boolean del;
	
	public boolean isDel() {
		return del;
	}
	public void setDel(boolean del) {
		this.del = del;
	}
	public String getAttid() {
		return attid;
	}
	public void setAttid(String attid) {
		this.attid = attid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public City getCcity() {
		return ccity;
	}
	public void setCcity(City ccity) {
		this.ccity = ccity;
	}
	@Override
	public String toString() {
		return "Attraction [attid=" + attid + ", name=" + name
				+ ", image="+image+",position=" + position + ", introduce=" + introduce + "]";
	}
	
	

}
