package com.cyx.service;

import java.util.List;

public interface IPersistOrder<T> {
	public void addOrder(T t);
	public List<T> findOrderByUserId(String userId);
	public T findOrderPurchaseByGoodId(String goodId);
	public T findOrderByOrderId(String orderId);
}
