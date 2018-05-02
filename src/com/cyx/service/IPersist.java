package com.cyx.service;

import java.util.List;


public interface IPersist<T> {
	public void addUser(T t);
	public List<T> findUser();

	// 按用户名查找
	public T findUserByUserName(String userName);
	public void deleteUserByUserName(String userName);
	public T findUserByUserId(String userId);
}
