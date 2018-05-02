package com.cyx.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cyx.entity.Good;
import com.cyx.entity.User;

public interface GoodMapper {
	public void addGood(Good good);
	public List<Good> findGoodSaleByUserId(String userId);
	public void updateGoodSalesDetailByGoodId(@Param("good") Good good,@Param("goodId") String goodId);
	public Good findGoodSalesDetailByGoodId(String goodId);
	public void deleteGoodSalesByGoodId(String goodId);
	public List<Good> findGood();
	public void updateGoodByGoodId(@Param("good") Good good,@Param("goodId") String goodId);
	public List<Good> findGoodWeichushou(String userId);
	public void goodPurchase(@Param("good") Good good,@Param("goodId") String goodId);
}
