package com.cyx.handlers;

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

import com.cyx.entity.User;
import com.cyx.entity.Word;
import com.cyx.service.IPersistWord;
import com.cyx.util.StringUtil;

@Controller
public class WordHandler {
	Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired()
	@Qualifier("persistWordService")
	IPersistWord<Word> persistWordService;
	
	@RequestMapping("orderTousu")
	public String orderTousu(Map<String, Object> map,HttpServletRequest request) {
		logger.info("投诉页面");
		map.put("words", new Word());
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		map.put("wordLists",persistWordService.findWordListByUserId(userId));
		return "orderTousu";
	}
	
	@RequestMapping("orderTousuSubmit")
	public String orderTousuSubmit(Map<String, Object> map,HttpServletRequest request,@ModelAttribute("words") Word word) {
		logger.info("投诉提交");
		String userId = ((User)request.getSession().getAttribute("user")).getUserId();
		String userName = ((User)request.getSession().getAttribute("user")).getUserName();
		word.setWordId(StringUtil.getUUID());
		word.setUserId(userId);
		word.setUserName(userName);
		persistWordService.addWord(word);
		
		map.put("wordLists",persistWordService.findWordListByUserId(userId));
		return "orderTousu";
		
	}
	
	@RequestMapping("orderTousuAll")
	public String orderTousuAll(Map<String, Object> map) {
		logger.info("投诉列表");
		map.put("wordLists", persistWordService.findWordListAll());
		return "orderTousuAll";
	}
	
	@RequestMapping("orderTousuAllDetail_{wordId}")
	public String orderTousuAllDetail(@PathVariable("wordId") String wordId,Map<String, Object> map) {
		logger.info("投诉列表详情");
		map.put("wordList",persistWordService.findWordListByWordId(wordId));
		return "orderTousuAllDetail";
	}
	
	@RequestMapping(value="orderTousuAllDetailUpdate_{wordId}",method = RequestMethod.POST)
	public String orderTousuAllDetailUpdate(@PathVariable("wordId") String wordId,Map<String, Object> map,Word word) {
		logger.info("投诉列表更改");
		persistWordService.updateWordStatusByWordId(word, wordId);
		map.put("wordList", persistWordService.findWordListByWordId(wordId));
		return "msg/successCaozuo";
	}
}
