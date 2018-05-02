package com.cyx.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.cyx.entity.Word;
import com.cyx.mapper.WordMapper;

public class PersistWordService extends AbstractDao{
	private Logger logger=Logger.getLogger(this.getClass());
	@Autowired
	WordMapper wordMapper;
	
	public PersistWordService() {
		super();
		System.out.println("PersistWordService调用无参构造方法");
	}
	
	@Override
	public void addWord(Word t) {
		if(t!=null) {
			wordMapper.addWord(t);
		}else {
			logger.error("传入对象为空,不能新增该对象");
		}
	}

	@Override
	public List<Word> findWordListByUserId(String userId) {
		return wordMapper.findWordListByUserId(userId);
	}
	
	@Override
	public List<Word> findWordListAll(){
		return wordMapper.findWordListAll();
	}
	
	@Override
	public Word findWordListByWordId(String wordId) {
		return wordMapper.findWordListByWordId(wordId);
	}
	
	@Override
	public void updateWordStatusByWordId(Word word,String wordId) {
		wordMapper.updateWordStatusByWordId(word, wordId);
	}
	
	public WordMapper getWordMapper() {
		return wordMapper;
	}

	public void setWordMapper(WordMapper wordMapper) {
		this.wordMapper = wordMapper;
	}
}
