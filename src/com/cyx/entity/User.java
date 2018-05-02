package com.cyx.entity;

public class User {
	private String userId;
	private String userName;
	private String password;
	private String mobile;
	private Integer type;
	private String repassword;
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
	public User() {
		super();
	}
	public User(String userId,String userName,String password,int type) {
		super();
		this.userId=userId;
		this.userName=userName;
		this.password=password;
		this.type=type;
	}
	

	
	@Override
	public String toString() {
		return "User [user_id] = " + userId + ",[user_name] = " + userName + ",[password] = " + password +  ",[type] = " + type;
	}
}
