package com.cyx.mapper;

import java.util.List;

import com.cyx.entity.User;

public interface UserMapper {
	public void addUser(User user);

	public List<User> findUser();
	
	// 按用户名查询
	public User findUserByUserName(String userName);

	public void deleteUserByUserName(String userName);
	
	public User findUserByUserId(String userId);
}
