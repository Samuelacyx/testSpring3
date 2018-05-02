package com.cyx.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.cyx.entity.User;
import com.cyx.mapper.UserMapper;

public class PersistService extends AbstractDao{
	private Logger logger=Logger.getLogger(this.getClass());
	
	/*
	 * User的Mapper接口
	 * 
	 * */
//	@Autowired
	UserMapper userMapper;

	
	public PersistService() {
		super();
		System.out.println("PersistService调用无参构造方法");
	}
	
	@Override
	public void addUser(User t) {
		if(t!=null) {
			userMapper.addUser(t);
		}else {
			logger.error("传入对象为空,不能新增该对象");
		}
	}
	
	@Override
	public List<User> findUser(){
		return userMapper.findUser();
		
	}
	
	@Override
	public User findUserByUserName(String userName) {
		return userMapper.findUserByUserName(userName);
	}
	
	@Override
	public void deleteUserByUserName(String userName) {
		if(userName!=null) {
			userMapper.deleteUserByUserName(userName);
		}else {
			logger.error("不存在用户： " + userName);
		}
	}
	
	@Override
	public User findUserByUserId(String userId) {
		return userMapper.findUserByUserId(userId);
	}
	
	public UserMapper getUserMapper() {
		return userMapper;
	}



	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	
}
