package com.cyx.handlers;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cyx.entity.User;
import com.cyx.entity.UserInfo;
import com.cyx.service.IPersistUserInfo;

@Controller
public class UserInfoHandler {
	Logger logger = Logger.getLogger(this.getClass());
	
	
	@Autowired()
	@Qualifier("persistUserInfoService")
	IPersistUserInfo<UserInfo> persistUserInfoService;
	
	@RequestMapping("userInfo")
	public String userInfoList(UserInfo userInfo,Map<String, Object> map,HttpServletRequest request) {
		logger.info("开始调用用户信息");
		// 查询所有用户信息
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		if(persistUserInfoService.findUserInfoById(userId) == null) {
			int sex = 2;
			int status = 2;
			userInfo.setUserId(userId);
			userInfo.setSex(sex);
			userInfo.setStatus(status);
			persistUserInfoService.addUserInfo(userInfo);
		}
		map.put("userInfo", persistUserInfoService.findUserInfoById(userId));
		return "userInfo";
	}
	
	@RequestMapping(value="userInfo",method=RequestMethod.POST)
	public String userInfoListUpdate(UserInfo userInfo,Map<String, Object> map,HttpServletRequest request) {
		logger.info("修改个人资料");
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		persistUserInfoService.updateUserInfoById(userInfo,userId);
		map.put("userInfo", persistUserInfoService.findUserInfoById(userId));
		return "msg/userInfoSuccess";
	}
	
	@RequestMapping("userInfoList_{userId}")
	public String userInfoDetail(@PathVariable("userId") String userId,Map<String, Object> map) {
		logger.info(userId + "被管理员调用用户资料");
		// 查询所有用户信息
		map.put("userInfoDetail", persistUserInfoService.findUserInfoById(userId));
		return "userInfoDetail";
	}
}
