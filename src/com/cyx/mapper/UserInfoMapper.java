package com.cyx.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cyx.entity.UserInfo;

public interface UserInfoMapper {
	public void addUserInfo(UserInfo userInfo);
	public List<UserInfo> findUserInfo();
	public UserInfo findUserInfoById(String userId);
	public void updateUserInfoById(@Param("userInfo") UserInfo userInfo,@Param("userId") String userId);
}
