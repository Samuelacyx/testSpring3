package com.cyx.handlers;

import java.util.List;
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
import com.cyx.service.IPersist;
import com.cyx.service.IPersistUserInfo;
import com.cyx.util.StringUtil;


@Controller
public class UserHandler {

	Logger logger = Logger.getLogger(this.getClass());

	@Autowired()
	@Qualifier("persistService")
	IPersist<User> persistService;
	@Autowired()
	@Qualifier("persistUserInfoService")
	IPersistUserInfo<UserInfo> persistUserInfoService;
	
	@RequestMapping("/save")
	public String list(Map<String, Object> map) {
		logger.info("开始调用用户表");
		// 查询所有用户信息
		map.put("users", persistService.findUser());
		return "test";
	}
	
	@RequestMapping("/login")
	public String login(Map<String, Object> map) {
		logger.info("登录页面");
		// 查询所有的电影信息
		map.put("user", new User());
		return "login";
	}
	
	@RequestMapping(value="/loginUser",method=RequestMethod.POST)
    public String sign(User userModel, UserInfo userInfo,Map<String, Object> map,HttpServletRequest request){
		String userName = userModel.getUserName();
		String password = userModel.getPassword();
		if (userName != null && password != null) {
			if (!userName.equals("") && !password.equals("")) {
				if (persistService.findUserByUserName(userName) != null) {
					if (persistService.findUserByUserName(userName).getPassword().equals(password)) {
						logger.info("用户：" + userName + "使用系统");
						userModel.setUserId(persistService.findUserByUserName(userName).getUserId());
						userModel.setUserName(persistService.findUserByUserName(userName).getUserName());
						userModel.setPassword(persistService.findUserByUserName(userName).getPassword());
						userModel.setType(persistService.findUserByUserName(userName).getType());
						request.getSession().setAttribute("user", userModel);
						map.put("user", userModel);
						
						String userId = ((User)request.getSession().getAttribute("user")).getUserId();
						if(persistUserInfoService.findUserInfoById(userId) == null) {
							int sex = 2;
							int status = 2;
							userInfo.setUserId(userId);
							userInfo.setSex(sex);
							userInfo.setStatus(status);
							persistUserInfoService.addUserInfo(userInfo);
							logger.info("首次登录，跳转到用户信息");
							return "msg/firstLogin";
						}
						
						return "msg/loginSuccess";
					}else {
						return "msg/loginFail";
					}
				}else {
					logger.info("用户名不存在");
					return "msg/noUser";
				}
			}else {
				return "msg/loginFail";
			}
		}else {
			return "msg/loginFail";
		}
	}
	
	@RequestMapping("/register")
	public String register(Map<String, Object> map) {
		logger.info("注册页面");
		map.put("users", new User());
		return "register";
	}
	
	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public String adduser(User userModel, Map<String, Object> map) {
		
		String userName = userModel.getUserName();
		String password = userModel.getPassword();
		String repassword = userModel.getRepassword();
		userModel.setUserId(StringUtil.getUUID());
		if(repassword.equals(password)) {
			if (userName != null && password != null) {
				if (!userName.equals("") && !password.equals("")) {
						if (persistService.findUserByUserName(userName) != null) {
							logger.info("注册失败，已有用户名");
							return "msg/haveUser";//注册失败，已有用户名
						}else {
							persistService.addUser(userModel);
							logger.info("注册成功");
							map.put("users", persistService.findUser());
							return "msg/registerSuccess";//注册成功
						}
	
				} else {
					logger.info("注册失败，内容为''");
					return "msg/registerFail";//注册失败，内容为“”
				}
			}else {
				logger.info("注册失败，内容为null");
				return "msg/registerFail";
			}//注册失败，内容为null
		}//两次密码不一致
		else {
			logger.info("两次密码不一致");
			return "msg/repasswordFail";
		}
	}
	
	@RequestMapping("user")
	public String userList(Map<String, Object> map) {
		logger.info("开始调用用户表");
		// 查询所有用户信息
		map.put("users", persistService.findUser());
		return "user";
	}
	
	@RequestMapping(value="userDelete/{userName}",method = RequestMethod.POST)
	public String userDelete(@PathVariable("userName") String userName) {
		logger.info(userName + "删除用户");
		// 查询所有用户信息
		persistService.deleteUserByUserName(userName);
		return "msg/successCaozuo";
	}
	

}
