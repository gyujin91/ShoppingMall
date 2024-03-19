package com.shopping.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.dto.ReplyDTO;
import com.shopping.service.ReplyService;


@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
//	@RequestMapping("selectReply.do")
//	public String selectReply(Model model, HttpSession session) throws Exception {
//		List<ReplyDTO> replyList = replyService.selectReply(); 
//		
//		model.addAttribute("replyList", replyList);
//		return "review/reviewList";
//	}
	
	
	
	
	
	
	
	
	
	
	
	
}
