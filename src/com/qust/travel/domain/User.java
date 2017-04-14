
package com.qust.travel.domain;

public class User {
	private String userid;
    private String username;

	private String nickname;
	private String password;
	
	private String certainpassword;
	private String image;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCertainpassword() {
		return certainpassword;
	}
	public void setCertainpassword(String certainpassword) {
		this.certainpassword = certainpassword;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String uname) {
		this.nickname = uname;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username
				+ ", nickname=" + nickname + ", password=" + password
				+ ", certainpassword=" + certainpassword + ", image=" + image
				+ "]";
	}
	
	
	
	
	

}
