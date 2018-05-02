package com.cyx.service;

import java.util.List;


public interface IPersistUserInfo<T> {
	public void addUserInfo(T t);
	public List<T> findUserInfo();
	public T findUserInfoById(String userId);
	public void updateUserInfoById(T t,String userId);
}
