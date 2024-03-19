package com.shopping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.dto.ReplyDTO;
import com.shopping.dto.ReviewDTO;
import com.shopping.service.ReplyService;
import com.shopping.service.ReviewService;


@Controller
@RequestMapping("/review/*")
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	ReplyService replyService;
	
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@RequestMapping("reviewList.do")
	public String reviewList(Model model, HttpSession session) throws Exception {
		
		List<ReviewDTO> reviewList = reviewService.reviewList();
		Map<Integer, List<ReplyDTO>> replyMap = new HashMap<>();
		
		// 리뷰 별로 답글을 가져와서 매핑
		for(ReviewDTO rDTO : reviewList) {
			int review_no = rDTO.getRno();
			List<ReplyDTO> selectReply = replyService.selectReply(review_no);
			replyMap.put(review_no, selectReply);
			
			String mem_name = rDTO.getMem_name();
			
			// 이름 마스킹
			if (mem_name.length() > 2) {
			    // 이름이 세 글자 이상일 때는 첫 번째 글자와 마지막 글자를 제외하고 마스킹 처리
			    StringBuilder maskedName = new StringBuilder();
			    maskedName.append(mem_name.charAt(0)); // 첫 번째 글자는 그대로 유지
			    for (int i = 1; i < mem_name.length() - 1; i++) {
			        maskedName.append("*");
			    }
			    maskedName.append(mem_name.charAt(mem_name.length() - 1)); // 마지막 글자는 그대로 유지
			    System.out.println(maskedName);
			    model.addAttribute("maskedName", maskedName);
			} else if (mem_name.length() == 2) {
			    // 이름이 두 글자일 때는 두 번째 글자만 마스킹 처리
			    StringBuilder maskedName = new StringBuilder();
			    maskedName.append(mem_name.charAt(0)); // 첫 번째 글자는 그대로 유지
			    maskedName.append("*"); // 두 번째 글자를 마스킹 처리
			    System.out.println(maskedName);
			    model.addAttribute("maskedName", maskedName);
			} else {
			    System.out.println("이름은 한 글자가 될 수 없습니다.");
			}
		}
		
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("replyMap", replyMap);
		model.addAttribute("loginMap", loginMap);
		return "review/reviewList";
	}
	
	// 리뷰 작성 페이지 
	@RequestMapping("insertReviewForm.do")
	public String insertReviewForm() throws Exception {
		
		return "review/insertReviewForm";
	}
	
	// 리뷰 작성
	@RequestMapping("insertReview.do")
	public String insertReview() throws Exception {
		
		return "";
	}
	
	
	
	
	
	
	
	
	
	
}
