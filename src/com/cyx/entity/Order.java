package com.cyx.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Order {
	private String orderId;
	private String goodId;
	private String userId;
	private String receiver;
	private String phone;
	private String address;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;
	private String userName;
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getGoodId() {
		return goodId;
	}

	public void setGoodId(String goodId) {
		this.goodId = goodId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Order() {
		super();
	}

	public Order(String orderId, String goodId, String userId, String receiver, String phone, String address) {
		// TODO Auto-generated constructor stub
		super();
		this.orderId=orderId;
		this.goodId=goodId;
		this.userId=userId;
		this.receiver=receiver;
		this.phone=phone;
		this.address=address;
	}

	@Override
	public String toString() {
		return "order [order_id] = " + orderId + " [good_id] = " + goodId + " [receiver] = " + receiver + " [phone] = "
				+ phone + " [address] = " + address + " [create_time] = " + createTime + " [user_id] = " + userId + " [user_name] = " + userName;
	}
}
