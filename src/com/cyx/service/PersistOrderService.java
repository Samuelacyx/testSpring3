package com.cyx.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.cyx.entity.Good;
import com.cyx.entity.Order;
import com.cyx.mapper.OrderMapper;

public class PersistOrderService extends AbstractDao{
	private Logger logger=Logger.getLogger(this.getClass());
	@Autowired
	OrderMapper orderMapper;
	
	public PersistOrderService() {
		super();
		System.out.println("PersistOrderService调用无参构造方法");
	}
	
	@Override
	public void addOrder(Order t) {
		if(t!=null) {
			orderMapper.addOrder(t);
		}else {
			logger.error("传入对象为空,不能新增该对象");
		}
	}
	
	@Override
	public List<Order> findOrderByUserId(String userId){
		return orderMapper.findOrderByUserId(userId);
	}
	
	@Override
	public Order findOrderPurchaseByGoodId(String goodId) {
		return orderMapper.findOrderPurchaseByGoodId(goodId);
	}

	@Override
	public Order findOrderByOrderId(String orderId){
		return orderMapper.findOrderByOrderId(orderId);
	}
	
	public OrderMapper getOrderMapper() {
		return orderMapper;
	}

	public void setOrderMapper(OrderMapper orderMapper) {
		this.orderMapper = orderMapper;
	}
}
