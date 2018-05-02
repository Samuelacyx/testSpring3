package com.cyx.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cyx.entity.Good;

public interface IPersistGood<T> {
	public void addGood(T t);
	public List<T> findGoodSaleByUserId(String userId);
	public void updateGoodSalesDetailByGoodId(Good good,String goodId);
	public T findGoodSalesDetailByGoodId(String goodId);
	public void deleteGoodSalesByGoodId(String goodId);
	public List<T> findGood();
	public void updateGoodByGoodId(Good good,String goodId);
	public List<T> findGoodWeichushou(String userId);
	public void goodPurchase(Good good,String goodId);
}
