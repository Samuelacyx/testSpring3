package com.cyx.service;

import java.util.List;

import com.cyx.entity.Word;

public interface IPersistWord<T> {
	public void addWord(T t);
	public List<T> findWordListByUserId(String userId);
	public List<T> findWordListAll();
	public T findWordListByWordId(String wordId);
	public void updateWordStatusByWordId(Word word,String wordId);
}
