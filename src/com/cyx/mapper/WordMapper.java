package com.cyx.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cyx.entity.Word;

public interface WordMapper {
	public void addWord(Word word);
	public List<Word> findWordListByUserId(String userId);
	public List<Word> findWordListAll();
	public Word findWordListByWordId(String wordId);
	public void updateWordStatusByWordId(@Param("word") Word word,@Param("wordId") String wordId);
}
