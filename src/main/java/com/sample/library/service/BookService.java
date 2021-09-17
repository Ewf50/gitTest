package com.sample.library.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.library.domain.BookVO;
import com.sample.library.mapper.BookMapper;

@Service
public class BookService {
	@Autowired
	private BookMapper bookMapper;
	
	public int save(BookVO bookVO) {
		return bookMapper.save(bookVO);
	}
}