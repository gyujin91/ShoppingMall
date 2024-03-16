package com.shopping.service;

import java.util.List;

import com.shopping.dto.NoticeDTO;

public interface NoticeService {
	
	// 공지글 조회
	public List<NoticeDTO> noticeList() throws Exception;
	
	// 공지글 등록
	public void insertNotice(NoticeDTO dto) throws Exception;
	
	// 현재 최대 공지 번호 +1
	public int nextNum() throws Exception;
}