package com.cyx.entity;

public class UserInfo {
	private String userId;
	private int sex;
	private String school;
	private String address;
	private int status;
	private String mobile;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public UserInfo() {
		super();
	}

	public UserInfo(String userId, int sex, String school, String address, int status, String mobile) {
		super();
		this.userId = userId;
		this.sex = sex;
		this.school = school;
		this.address = address;
		this.status = status;
		this.mobile = mobile;
	}

	public UserInfo(int sex, String school, String address, int status, String mobile) {
		super();
		this.sex = sex;
		this.school = school;
		this.address = address;
		this.status = status;
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "UserInfo [user_id] = " + userId + ",[sex] = " + sex + ",[school] = " + school + ",[address] = "
				+ address + ",[status] = " + status + ",[mobile] = " + mobile;
	}
}
