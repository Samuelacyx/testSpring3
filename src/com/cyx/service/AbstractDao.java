package com.cyx.service;

import java.util.List;

import com.cyx.entity.Good;
import com.cyx.entity.Order;
import com.cyx.entity.User;
import com.cyx.entity.UserInfo;
import com.cyx.entity.Word;


public abstract class AbstractDao implements IPersist<User>,IPersistUserInfo<UserInfo>,IPersistGood<Good>,IPersistOrder<Order>,IPersistWord<Word>{
	@Override
	public void addUser(User t) {}
	
	
	@Override
	public List<User> findUser() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public User findUserByUserName(String userName) {
		return null;
	}
	
	@Override
	public void deleteUserByUserName(String userName) {}
	
	@Override
	public User findUserByUserId(String userId) {
		return null;
	}
	
	@Override
	public void addUserInfo(UserInfo t) {}
	
	@Override
	public List<UserInfo> findUserInfo() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public UserInfo findUserInfoById(String userId) {
		return null;
	}
	
	@Override
	public void updateUserInfoById(UserInfo t,String userId) {}
	
	@Override
	public void addGood(Good t) {}
	
	@Override
	public List<Good> findGoodSaleByUserId(String userId) {
		return null;
	}
	
	@Override
	public void deleteGoodSalesByGoodId(String goodId) {}
	
	@Override
	public void updateGoodSalesDetailByGoodId(Good good,String goodId) {
	}
	
	@Override
	public Good findGoodSalesDetailByGoodId(String goodId) {
		return null;
	}
	
	@Override
	public List<Good> findGood(){
		return null;
	}
	
	@Override
	public void updateGoodByGoodId(Good good,String goodId) {}
	
	@Override
	public List<Good> findGoodWeichushou(String userID) {
		return null;
	}
	
	@Override
	public List<Order> findOrderByUserId(String userId){
		return null;
	}
	
	@Override
	public void goodPurchase(Good good,String goodId) {}
	
	@Override
	public void addOrder(Order order) {}
	
	@Override
	public Order findOrderPurchaseByGoodId(String goodId){
		return null;
	}
	
	@Override
	public void addWord(Word t) {}
	
	@Override
	public List<Word> findWordListByUserId(String userId) {
		return null;
	}
	
	@Override
	public List<Word> findWordListAll(){
		return null;
	}
	
	@Override
	public Word findWordListByWordId(String wordId) {
		return null;
	}
	
	@Override
	public void updateWordStatusByWordId(Word word,String wordId) {}
	
	@Override
	public Order findOrderByOrderId(String orderId){
		return null;
	}
}
