package com.cyx.mapper;

import java.util.List;

import com.cyx.entity.Order;

public interface OrderMapper {
	public void addOrder(Order order);
	public List<Order> findOrderByUserId(String userId);
	public Order findOrderPurchaseByGoodId(String goodId);
	public Order findOrderByOrderId(String orderId);
}
