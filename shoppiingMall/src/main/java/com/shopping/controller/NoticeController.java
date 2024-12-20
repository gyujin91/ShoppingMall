package com.shopping.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.dto.NoticeDTO;
import com.shopping.service.NoticeService;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	// 공지 목록 조회
	@RequestMapping("noticeList.do")
	public String noticeList(Model model) throws Exception {
		List<NoticeDTO> noticeList = noticeService.noticeList();
		
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeList";
	}
	
	// 공지 글 상세 보기
	@RequestMapping("noticeRead.do")
	public String noticeRead(Model model, @RequestParam int num) throws Exception {
		
		NoticeDTO noticeDto = noticeService.noticeRead(num);				
		noticeService.increaseViewCount(num);	// 조회수 증가
		
		model.addAttribute("noticeDto", noticeDto);
		return "notice/noticeRead";
	}
	
	
}
