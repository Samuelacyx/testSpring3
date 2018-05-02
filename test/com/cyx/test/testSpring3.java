package com.cyx.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cyx.entity.Good;
import com.cyx.entity.Order;
import com.cyx.entity.User;
import com.cyx.entity.UserInfo;
import com.cyx.entity.Word;
import com.cyx.mapper.UserInfoMapper;
import com.cyx.mapper.UserMapper;
import com.cyx.service.IPersist;
import com.cyx.service.IPersistGood;
import com.cyx.service.IPersistOrder;
import com.cyx.service.IPersistUserInfo;
import com.cyx.service.IPersistWord;
import com.cyx.util.StringUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/beans.xml")

public class testSpring3 {
	Logger logger = Logger.getLogger(this.getClass().getName());
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private UserInfoMapper userInfoMapper;
	
	@Autowired
	private IPersist<User> persistService;

	@Autowired
	private IPersistUserInfo<UserInfo> persistUserInfoService;
	
	@Autowired
	private IPersistGood<Good> persistGoodService;
	
	@Autowired
	private IPersistOrder<Order> persistOrderService;
	
	@Autowired
	private IPersistWord<Word> persistWordService;
	
	//@Test
	public void testAddStudent() {
		
		User user = new User("aassa1","o12sss3411", "123", 2);
		persistService.addUser(user);
		logger.info("李四添加成功!");
	}
	//@Test
	public void testFindUser() {
		List<User> userList = persistService.findUser();
		for(User user : userList) {
			System.out.println(user);
		}
	}
	
	//@Test
	public void testFindUserByName() {
		User userModel = persistService.findUserByUserName("admin");
		logger.info(userModel);
		int type = persistService.findUserByUserName("chenyuxi").getType();
		System.out.println(type);
	}
	
	//@Test
	public void testDeleteUserByName() {
		String userName="aaaa";
		persistService.deleteUserByUserName(userName);
		logger.info(userName + "删除成功");
	}
	
	//@Test
	public void testRegisterExitName() {
		String userName = "222";
		if(persistService.findUserByUserName(userName) != null)
			logger.info(userName + "存在");
		else {
			User user = new User(StringUtil.getUUID(),userName, "123", 2);
			persistService.addUser(user);
		}
	}
	
	//@Test
	public void testAddUserInfo() {
		
		UserInfo userInfo = new UserInfo("09b552d645e44f68bbfce3a124c10d9b",1, "123", "aa",2,"en");
		persistUserInfoService.addUserInfo(userInfo);
		logger.info("信息添加成功");
	}
	
	//@Test
	public void testFindUserInfo() {
		List<UserInfo> userList = persistUserInfoService.findUserInfo();
		for(UserInfo user : userList) {
			System.out.println(user);
		}
	}
	
	//@Test()
	public void testFindUserInfoById() {
		UserInfo userModel = persistUserInfoService.findUserInfoById("09b552d645e44f68bbfce3a124c10d9b");
		logger.info(userModel);
		
	}
	
	//@Test()
	public void testUpdateUserInfoById() {
		UserInfo userInfo = new UserInfo(1, "123", "aa",1,"en");
		String userId="09b552d645e44f68bbfce3a124c10d9b";
		persistUserInfoService.updateUserInfoById(userInfo,userId);
	}
	
	//@Test()
	public void testAddGood() {
		
		Good good = new Good("aa","aa","aa","aa",2.0,1,1);
		persistGoodService.addGood(good);
		logger.info("aa添加成功!");
	}
	
	//@Test
	public void testFindGoodSaleByUserId() {
		String userId = "09b552d645e44f68bbfce3a124c10d9b";
		List<Good> goodList = persistGoodService.findGoodSaleByUserId(userId);
		for(Good good : goodList)
			System.out.println(good);
	}
	
	//@Test
	public void testFindGoodSalesDetailByGoodId() {
		String goodId = "cfd5585b712d45249149f5e72b0c80fb";
		Good good = persistGoodService.findGoodSalesDetailByGoodId(goodId);
		logger.info(good);
	}
	
	//@Test
	public void testUpdateGoodSalesDetailByGoodId() {
		String goodId = "89c36c0b20ec439cbc549dd6dd06152a";
		Good good = new Good("goodName","img",2.2,2);
		persistGoodService.updateGoodSalesDetailByGoodId(good, goodId);
	}
	
	//@Test
	public void testDeleteGoodSalesByGoodId() {
		String goodId = "40eca6ec26db4df986003995ae1d0a6f";
		persistGoodService.deleteGoodSalesByGoodId(goodId);
		logger.info(goodId+"删除成功");
	}
	
	//@Test
	public void testFindGood() {
		List<Good> goodList = persistGoodService.findGood();
		for(Good good : goodList)
			System.out.println(good);
	}
	
	//@Test
	public void testFindUserByUserId() {
		String userId = "09b552d645e44f68bbfce3a124c10d9b";
		persistService.findUserByUserId(userId);
		
	}
	
	//@Test
	public void testFindUserName() {
		List<Good> goods = persistGoodService.findGood();
		goods.forEach(good ->{
			String userId = good.getUserId();
			User user = new User();
			user.setUserId(userId);
			good.setUser(persistService.findUserByUserId(userId));
		});
		for(Good goodd: goods)
			System.out.println(goodd);
	}
	
	//@Test
	public void testGoodChargeDetailUpdate() {
		String goodId = "89c36c0b20ec439cbc549dd6dd06152a";
		Good good = new Good(2,2);
		persistGoodService.updateGoodByGoodId(good, goodId);
	}
	
	//@Test
	public void testFindGoodWeichushou() {
		String userIdno = "09b552d645e44f68bbfce3a124c10d9b";
		List<Good> goods = persistGoodService.findGoodWeichushou(userIdno);
		goods.forEach(good ->{
			String userId = good.getUserId();
			User user = new User();
			user.setUserId(userId);
			good.setUser(persistService.findUserByUserId(userId));
		});
		for(Good good : goods)
			System.out.println(good);
	}
	
	//@Test
	public void testGoodPurchase() {
		Good good = new Good(2);
		String goodId = "89c36c0b20ec439cbc549dd6dd06152a";
		persistGoodService.goodPurchase(good, goodId);
	}
	
	//@Test
	
	public void testAddOrder() {
		Order order = new Order("4","3","3","3","3","3");
		persistOrderService.addOrder(order);
		logger.info("添加成功");
	}
	
	//@Test
	public void testFindOrderByUserId() {
		String userId = "aeea713a523a44c7bb78284abbd93e48";
		List<Order> orderList = persistOrderService.findOrderByUserId(userId);
		for(Order order : orderList)
			System.out.println(order);
	}
	
	//@Test
	public void testOrderListDetail() {
		String goodId = "c7370e143b3545058da25fd88d17748e";
		String userName = persistGoodService.findGoodSalesDetailByGoodId(goodId).getUserName();
		System.out.println(userName);
	}
	
	//@Test
	public void testFindOrderPurchaseByGoodId() {
		String goodId = "cfd5585b712d45249149f5e72b0c80fb";
		String userName = persistOrderService.findOrderPurchaseByGoodId(goodId).getUserName();
		System.out.println(userName);
	}
	
	//@Test
	public void testAddWord() {
		Word word = new Word("22","22","22","22");
		persistWordService.addWord(word);
		logger.info("ok");
	}
	
	//@Test
	public void testUpdateWordStatusByWordId() {
		Word word = new Word(3);
		String wordId = "8921ac1299084e11835f16f381f9b95f";
		persistWordService.updateWordStatusByWordId(word, wordId);
	}
	
	@Test
	public void testFindOrderByOrderIdGetGoodId() {
		String orderId = "22";
		String goodId  = persistOrderService.findOrderByOrderId(orderId).getGoodId();
		String userName = persistGoodService.findGoodSalesDetailByGoodId(goodId).getUserName();
		System.out.println(userName);
	}
}
