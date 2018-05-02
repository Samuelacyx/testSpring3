package com.cyx.handlers;

import java.util.Map;

import net.sf.json.JSONObject;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cyx.entity.Good;
import com.cyx.entity.Order;
import com.cyx.entity.User;
import com.cyx.service.IPersistGood;
import com.cyx.service.IPersistOrder;


@Controller
public class OrderHandler {
	Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired()
	@Qualifier("persistOrderService")
	IPersistOrder<Order> persistOrderService;
	
	@Autowired()
	@Qualifier("persistGoodService")
	IPersistGood<Good> persistGoodService;
	
	@RequestMapping("orderList")
	public String orderList(Map<String, Object> map,HttpServletRequest request) {
		logger.info("订单页面");
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		map.put("orderLists", persistOrderService.findOrderByUserId(userId));
		return "orderList";
		
	}
	
	@RequestMapping("orderListDetail_{goodId}")
	public String orderListDetail(@PathVariable("goodId") String goodId,Map<String,Object> map){
		logger.info(goodId + "订单详情");
		map.put("orderListDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		return "orderListDetail";
	}
	
	@RequestMapping("orderPurchase_{goodId}")
	public String goodSalesDetail(@PathVariable("goodId") String goodId,Map<String, Object> map) {
		logger.info(goodId + "查看买家的订单详情");
		map.put("orderPurchasePeople", persistOrderService.findOrderPurchaseByGoodId(goodId));
		return "orderPurchase";
	}
	
	@RequestMapping("orderSelect")
	public String orderSelect(Map<String, Object> map) {
		logger.info("订单查询页面");

		return "orderSelect";
		
	}
	
	@RequestMapping(value="findOrderByOrderId",method=RequestMethod.POST)
	public String findOrderByOrderId(@RequestParam("q") String orderId,Map<String, Object> map,HttpServletRequest request) {
		logger.info("查找订单");
		//String orderId = request.getParameter("q");
		map.put("order", persistOrderService.findOrderByOrderId(orderId));
		if(persistOrderService.findOrderByOrderId(orderId) != null) {
			String goodId = persistOrderService.findOrderByOrderId(orderId).getGoodId();
			map.put("orderListDetail", persistGoodService.findGoodSalesDetailByGoodId(goodId));
		}
		return "orderSelect";
	}
}
