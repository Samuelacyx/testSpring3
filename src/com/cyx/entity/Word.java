package com.cyx.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Word {
	private String wordId;
	private String userId;
	private String userName;
	private String content;
	private int wordStatus;
	public int getWordStatus() {
		return wordStatus;
	}
	public void setWordStatus(int wordStatus) {
		this.wordStatus = wordStatus;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;
	
	
	public String getWordId() {
		return wordId;
	}
	public void setWordId(String wordId) {
		this.wordId = wordId;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Word() {
		super();
	}
	
	public Word(String wordId, String userId, String userName, String content) {
		// TODO Auto-generated constructor stub
		super();
		this.wordId=wordId;
		this.userId=userId;
		this.userName=userName;
		this.content=content;
	}
	public Word(int wordStatus) {
		// TODO Auto-generated constructor stub
		super();
		this.wordStatus=wordStatus;
	}
	@Override
	public String toString() {
		return "Word [word_id] = " + wordId + " [user_id] = " + userId + " [user_name] = " + userName + " [content] = " + content + " [create_time] = " + createTime + " [word_status] = " + wordStatus;
	}
}
