package com.cyx.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Good {
	private String goodId;
	private String goodName;
	private String userId;
	private String img;
	private double price;
	private int goodType;
	private int goodStatus;
	private User user;
	private String userName;
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;

	public String getGoodId() {
		return goodId;
	}

	public void setGoodId(String goodId) {
		this.goodId = goodId;
	}

	public String getGoodName() {
		return goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getGoodType() {
		return goodType;
	}

	public void setGoodType(int goodType) {
		this.goodType = goodType;
	}

	public int getGoodStatus() {
		return goodStatus;
	}

	public void setGoodStatus(int goodStatus) {
		this.goodStatus = goodStatus;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Good() {
		super();
	}

	public Good(String goodId, String goodName, String userId, String img, double price, int goodType, int goodStatus) {
		// TODO Auto-generated constructor stub
		super();
		this.goodId = goodId;
		this.goodName = goodName;
		this.userId = userId;
		this.img = img;
		this.price = price;
		this.goodType = goodType;
		this.goodStatus = goodStatus;
	}
	


	public Good(String goodName, String img, double price, int goodType) {
		// TODO Auto-generated constructor stub
		super();
		this.goodName=goodName;
		this.img=img;
		this.price=price;
		this.goodType=goodType;
	}
	
	public Good(int goodType,int goodStatus) {
		super();
		this.goodType=goodType;
		this.goodStatus=goodStatus;
	}

	public Good(int goodStatus) {
		super();
		this.goodStatus=goodStatus;
	}
	
	@Override
	public String toString() {
		return "Good [userId] = " + userId +",[goodId]" + goodId + ",[goodName] = " + goodName + ",[img]=" + img + ",[price] = " + price + ",[goodType] = " + goodType
				+ ",[goodStatus] = " + goodStatus + ",[createTime] = " + createTime +",[userName] = " + user.getUserName() +",[userName] = " + userName;
	}
}
