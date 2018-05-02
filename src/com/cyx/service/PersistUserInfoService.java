package com.cyx.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.cyx.entity.UserInfo;
import com.cyx.mapper.UserInfoMapper;

public class PersistUserInfoService extends AbstractDao{
	private Logger logger=Logger.getLogger(this.getClass());
	@Autowired
	UserInfoMapper userInfoMapper;
	
	public PersistUserInfoService() {
		super();
		System.out.println("PersistUserInfoService调用无参构造方法");
	}
	
	@Override
	public void addUserInfo(UserInfo t) {
		if(t!=null) {
			userInfoMapper.addUserInfo(t);
		}else {
			logger.error("传入对象为空,不能新增该对象");
		}
	}
	
	@Override
	public List<UserInfo> findUserInfo(){
		return userInfoMapper.findUserInfo();
		
	}
	
	@Override
	public UserInfo findUserInfoById(String userId) {
		return userInfoMapper.findUserInfoById(userId);
	}
	
	@Override
	public void updateUserInfoById(UserInfo t,String userId) {
		if(t!=null) {
			userInfoMapper.updateUserInfoById(t,userId);
		}else {
			logger.error("传入对象为空,不能新增该对象");
		}
	}
	
	public UserInfoMapper getUserInfoMapper() {
		return userInfoMapper;
	}

	public void setUserInfoMapper(UserInfoMapper userInfoMapper) {
		this.userInfoMapper = userInfoMapper;
	}
}
