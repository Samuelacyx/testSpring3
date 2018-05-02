package com.cyx.handlers;

import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cyx.entity.Good;
import com.cyx.entity.Order;
import com.cyx.entity.User;
import com.cyx.service.IPersist;
import com.cyx.service.IPersistGood;
import com.cyx.service.IPersistOrder;
import com.cyx.util.StringUtil;

@Controller
public class GoodHandler {
	Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired()
	@Qualifier("persistGoodService")
	IPersistGood<Good> persistGoodService;
	
	@Autowired()
	@Qualifier("persistService")
	IPersist<User> persistService;
	
	@Autowired()
	@Qualifier("persistOrderService")
	IPersistOrder<Order> persistOrderService;
	
	
	@RequestMapping("goodSale")
	public String goodSale(Map<String, Object> map,HttpServletRequest request) {
		logger.info("物品售卖页面");
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		map.put("goodSale",new Good());
		map.put("goodSales", persistGoodService.findGoodSaleByUserId(userId));
		return "goodSale";
		
	}
	
	@RequestMapping("goodSaleSubmit")
	public String goodSaleSubmit(Good good,Map<String, Object> map,HttpServletRequest request) {
		good.setGoodId(StringUtil.getUUID());
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		good.setUserId(userId);
		int goodStatus = 0;
		good.setGoodStatus(goodStatus);
		
		persistGoodService.addGood(good);
		logger.info("商品添加成功");
		return "msg/successCaozuo";
	}
	
	@RequestMapping("goodSalesDetail_{goodId}")
	public String goodSalesDetail(@PathVariable("goodId") String goodId,Map<String, Object> map) {
		logger.info(goodId + "物品出售详情");
		map.put("goodSalesDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		return "goodSalesDetail";
	}
	
	@RequestMapping(value="goodSalesDetailUpdate_{goodId}",method=RequestMethod.POST)
	public String goodSalesDetailUpdate(@PathVariable("goodId") String goodId,Map<String, Object> map,Good good) {
		logger.info(goodId + "修改详情");
		persistGoodService.updateGoodSalesDetailByGoodId(good,goodId);
		map.put("goodSalesDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		return "msg/successCaozuo";
	}
	
	@RequestMapping(value="goodSalesDelete_{goodId}",method=RequestMethod.POST)
	public String goodSalesDelete(@PathVariable("goodId") String goodId,Map<String, Object> map) {
		persistGoodService.deleteGoodSalesByGoodId(goodId);
		logger.info(goodId + "删除");
		return "msg/successCaozuo";
	}
	
	@RequestMapping("goodCharge")
	public String goodCharge(Map<String, Object> map) {
		logger.info("物品管理");
		List<Good> goods = persistGoodService.findGood();
		goods.forEach(good ->{
			String userId = good.getUserId();
			User user = new User();
			user.setUserId(userId);
			good.setUser(persistService.findUserByUserId(userId));
		});
		logger.info("列出所有物品");
		map.put("goodCharge", goods);
		return "goodCharge";
	}
	
	@RequestMapping("goodChargeDetail_{goodId}")
	public String goodChargeUpdate(@PathVariable("goodId") String goodId,Map<String, Object> map) {
		logger.info("管理物品详情页面");
		map.put("goodChargeDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		//persistGoodService.updateGoodByGoodId(good,goodId);
		return "goodChargeDetail";
	}
	
	@RequestMapping(value="goodChargeDetailUpdate_{goodId}",method=RequestMethod.POST)
	public String goodChargeDetailUpdate(@PathVariable("goodId") String goodId,Map<String, Object> map,Good good) {
		logger.info(goodId + "修改物品状态");
		persistGoodService.updateGoodByGoodId(good,goodId);
		map.put("goodChargeDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		return "msg/successCaozuo";
	}
	
	@RequestMapping("goodPurchase")
	public String goodPurchase(Map<String, Object> map,HttpServletRequest request) {
		logger.info("物品购买页面");
		String userSessionId = ((User)request.getSession().getAttribute("user")).getUserId();
		List<Good> goods = persistGoodService.findGoodWeichushou(userSessionId);
		goods.forEach(good ->{
			String userId = good.getUserId();
			User user = new User();
			user.setUserId(userId);
			good.setUser(persistService.findUserByUserId(userId));
		});
		map.put("goodPurchase", goods);
		return "goodPurchase";
	}
	
	@RequestMapping("goodPurchaseDetail_{goodId}")
	public String goodPurchaseDetail(@PathVariable("goodId") String goodId,Map<String, Object> map) {
		logger.info("物品详情页面");
		map.put("goodPurchaseDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		map.put("orders", new Order());
		//persistGoodService.updateGoodByGoodId(good,goodId);
		return "goodPurchaseDetail";
	}
	
	@RequestMapping(value="goodPurchaseDetailBuy_{goodId}",method=RequestMethod.POST)
	public String goodPurchaseDetailBuy(@ModelAttribute("orders") Order order,@PathVariable("goodId") String goodId,Map<String, Object> map,Good good,HttpServletRequest request) {
		logger.info(goodId + "购买");
		
		persistGoodService.goodPurchase(good, goodId);
		order.setOrderId(StringUtil.getUUID());
		order.setGoodId(goodId);
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		order.setUserId(userId);
		String receiver = order.getReceiver();
		logger.info(receiver);
		persistOrderService.addOrder(order);
		logger.info("订单生成成功");
		map.put("goodPurchaseDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		return "msg/successCaozuo"; //"goodPurchaseDetail"//"<script>alert('请先登录');history.go(-1);</script>"
	}
	

}
