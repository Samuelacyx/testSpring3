package com.cyx.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.cyx.entity.Good;
import com.cyx.mapper.GoodMapper;

public class PersistGoodService extends AbstractDao{
	private Logger logger=Logger.getLogger(this.getClass());
	@Autowired
	GoodMapper goodMapper;
	
	public PersistGoodService() {
		super();
		System.out.println("PersistGoodService调用无参构造方法");
	}
	

	@Override
	public void addGood(Good t) {
		if(t!=null) {
			goodMapper.addGood(t);
		}else {
			logger.error("传入对象为空,不能新增该对象");
		}
	}
	
	@Override
	public List<Good> findGoodSaleByUserId(String userId){
		return goodMapper.findGoodSaleByUserId(userId);
	}
	
	@Override
	public void updateGoodSalesDetailByGoodId(Good good,String goodId) {
		goodMapper.updateGoodSalesDetailByGoodId(good, goodId);
	}
	
	@Override
	public Good findGoodSalesDetailByGoodId(String goodId) {
		return goodMapper.findGoodSalesDetailByGoodId(goodId);
	}
	
	@Override
	public void deleteGoodSalesByGoodId(String goodId) {
		goodMapper.deleteGoodSalesByGoodId(goodId);
	}
	
	@Override
	public List<Good> findGood(){
		return goodMapper.findGood();
	}
	
	@Override
	public void updateGoodByGoodId(Good good,String goodId) {
		goodMapper.updateGoodByGoodId(good, goodId);
	}
	
	@Override
	public List<Good> findGoodWeichushou(String userId) {
		return goodMapper.findGoodWeichushou(userId);
	}
	
	@Override
	public void goodPurchase(Good good,String goodId) {
		goodMapper.goodPurchase(good, goodId);
	}
	
	public GoodMapper getGoodMapper() {
		return goodMapper;
	}

	public void setGoodMapper(GoodMapper goodMapper) {
		this.goodMapper = goodMapper;
	}
	
}
