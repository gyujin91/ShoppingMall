package com.shopping.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.dto.OrderDTO;
import com.shopping.dto.ReviewDTO;
import com.shopping.service.OrderService;
import com.shopping.service.ReviewService;


@Controller
@RequestMapping("/review/*")
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	OrderService orderService;
	
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@RequestMapping("reviewList.do")
	public String reviewList(Model model, HttpSession session) throws Exception {
		
		List<ReviewDTO> reviewList = reviewService.reviewList();
		
		for(ReviewDTO rDTO : reviewList) {
			
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
		model.addAttribute("loginMap", loginMap);
		return "review/reviewList";
	}
	
	// 리뷰 작성 페이지 
	@RequestMapping("insertReviewForm.do")
	public String insertReviewForm(Model model, HttpSession session, @RequestParam String mem_id) throws Exception {
		List<OrderDTO> completedOrderList = orderService.completedOrderList(mem_id); // 리뷰 화면에서 결제 완료 된 주문 정보 조회
		
		
		for(OrderDTO oDTO : completedOrderList) {
			if(oDTO != null) {
				System.out.println("상품 번호 ::"  + oDTO.getProd_no());
				System.out.println("상품 이름 ::"  + oDTO.getProd_name());
				System.out.println("상품 이미지 ::"  + oDTO.getProd_image());
			} else {
				System.out.println("주문 정보가 없습니다.");
			}
		}
		
		model.addAttribute("completedOrderList", completedOrderList);
		return "review/insertReviewForm";
	}
	
	@RequestMapping("insertReview.do")
	public String insertReview(Model model, HttpSession session, ReviewDTO dto, HttpServletRequest request, @RequestParam String mem_id) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		// 로그인 체크
		if(loginMap != null) {
			// String memId = (String) loginMap.get("MEM_ID");	// 로그인 아이디 
			// String memName = (String) loginMap.get("MEM_NAME");	// 회원 이름
			
			
			// 선택된 상품의 주문 정보 가져오기
			String selectedProdNo = request.getParameter("prod_no");	// 상품번호
			String selectedProdName = request.getParameter("prod_name");	// 상품명
			String selectedProdImage = request.getParameter("prod_image");	// 상품 이미지
			
			List<OrderDTO> completedOrderList = orderService.completedOrderList(mem_id); // 해당 회원의 주문 목록 가져오기 
			
			// 주문 목록이 있다면 리뷰 정보에 세팅
			if((!completedOrderList.isEmpty()) && completedOrderList != null) {
				ReviewDTO reviewDTO = new ReviewDTO();
				reviewDTO.setReview_title(dto.getReview_title());	// 리뷰 제목
				reviewDTO.setReview_content(dto.getReview_content());	// 리뷰 내용
				reviewDTO.setMem_id((String) session.getAttribute("MEM_ID"));	// 회원 아이디
				reviewDTO.setMem_name((String) session.getAttribute("MEM_NAME")); 	// 회원 이름
				reviewDTO.setProd_no(Integer.parseInt(selectedProdNo));	// 상품번호
				reviewDTO.setProd_name(selectedProdName);	// 상품명
				reviewDTO.setProd_image(selectedProdImage);	// 상품 이미지
				
				reviewService.insertReview(dto);
			}
			return "redirect:/review/reviewList.do";
			
		} else {
			model.addAttribute("loginChk", "fail");
			return "review/insertReviewForm";
		}
	}
	
	// 리뷰 수정
	
	// 리뷰 삭제
	@RequestMapping("deleteReview.do")
	public String deleteReview(Model model, HttpSession session, @RequestParam int rno) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		if(loginMap != null) {
			// 세션에 저장된 회원 아이디
			String sessionId = (String) loginMap.get("MEM_ID");
			
			// 리뷰 조회
			ReviewDTO review = reviewService.getReviewByRno(rno);
			
			// 리뷰가 존재하고, 삭제 요창한 사용자의 아이디가 리뷰를 작성한 사용자의 아이디와 일치 하는 경우
			if(review != null && sessionId.equals(review.getMem_id())) {
				// 권한이 있는 경우 리뷰 삭제
				try {
					reviewService.deleteReview(rno);
					return "redirect:/review/reviewList.do";
				} catch(Exception e) {
					logger.info("리뷰 삭제 중 오류가 발생");
					model.addAttribute("errorMsg", "리뷰 삭제 중 오류가 발생 했습니다.");
					return "review/reviewList";
				}
			} else {
				model.addAttribute("fail", "삭제할 권한이 없습니다.");
				return "review/reviewList";
			}
		} else {
			// 로그인 하지 않은 경우
			model.addAttribute("loginChk", "fail");
			return "review/reviewList";
		}
		
	}
	
	
	
	
	
	
	
}
