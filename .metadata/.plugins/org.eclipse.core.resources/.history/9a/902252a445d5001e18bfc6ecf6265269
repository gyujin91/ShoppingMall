//package com.shopping.controller;
//
//import java.util.Arrays;
//import java.util.List;
//import java.util.Map;
//
//import javax.servlet.http.HttpSession;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.shopping.dto.MemberDTO;
//import com.shopping.dto.OrderDTO;
//import com.shopping.service.MemberService;
//import com.shopping.service.OrderService;
//
//
//@Controller
//@RequestMapping("/order/*")
//public class OrderController3 {
//	
//	@Autowired
//	OrderService orderService;
//	
//	@Autowired
//	MemberService memberService;
//	
//	private static final Logger logger = LoggerFactory.getLogger(OrderController3.class);
//	
////	// 상품 주문
////	@RequestMapping("insertOrder.do")
////	public String insertOrder(HttpSession session, Model model, OrderDTO dto, @RequestParam String mobile1, 
////	        @RequestParam String mobile2, @RequestParam String mobile3, @RequestParam String firstEmail,
////	        @RequestParam String secondEmail, @RequestParam String post, @RequestParam String addr1, 
////	        @RequestParam String addr2, @RequestParam int order_no) throws Exception {
////	    
////	    @SuppressWarnings("unchecked")
////	    Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
////	    
////	    // 로그인 체크
////	    if(loginMap != null) {
////	        // 필수 정보들이 모두 입력되었는지 확인
////	        if (mobile1 != null && !mobile1.isEmpty() && mobile2 != null && !mobile2.isEmpty() &&  
////	            mobile3 != null && !mobile3.isEmpty() && firstEmail != null && !firstEmail.isEmpty() &&             
////	            secondEmail != null && !secondEmail.isEmpty() && post != null && !post.isEmpty() &&
////	            addr1 != null && !addr1.isEmpty() && addr2 != null && !addr2.isEmpty()) {
////	            
////	            // 분리 전화번호, 이메일 결합 후 update
////	            MemberDTO memberDto = new MemberDTO();
////	            String phoneNumber = mobile1 + mobile2 + mobile3;
////	            String email = firstEmail + "@" + secondEmail;
////	            
////	            memberDto.setPhone(phoneNumber);
////	            memberDto.setEmail(email);
////	            memberDto.setPost(post);
////	            memberDto.setAddr1(addr1);
////	            memberDto.setAddr2(addr2);
////	            System.out.println("수정된 전화번호 :: " + phoneNumber);
////	            System.out.println("수정된 주소 :: " + post + addr1 + addr2);
////	            memberService.paymentMemberUpdate(memberDto);
////
////	            String mem_id = (String) loginMap.get("MEM_ID");
////	            
////	            dto.setMem_id(mem_id);
////	            dto.setDeliveryFee("무료");
////	            dto.setOrder_state("입금 준비중");
////	            
////	            logger.info("dto ::" + dto);
////	            logger.info("order_no ::" + dto.getOrder_no());
////	            orderService.insertOrder(dto);
////	            
////	            return "redirect:/order/orderDetail.do?order_no=" + dto.getOrder_no();      
////	        } else {
////	            System.out.println("필수 정보가 누락되었습니다.");
////	            model.addAttribute("info", "omission"); 
////	            return "/cart/orderForm.do";
////	        }
////	    } else {
////	    	// 로그인을 하지 않았을 경우
////			logger.info("로그인을 하지 않은 경우");
////			model.addAttribute("loginChk", "fail");
////			return "redirect:/member/loginForm.do";
////	    }
////	}
//	
//	// 상품 주문
//	@RequestMapping("insertOrder.do")
//	public String insertOrder(HttpSession session, Model model, OrderDTO dto, @RequestParam String mobile1, 
//	        @RequestParam String mobile2, @RequestParam String mobile3, @RequestParam String firstEmail,
//	        @RequestParam String secondEmail, @RequestParam String post, @RequestParam String addr1, 
//	        @RequestParam String addr2) throws Exception {
//	    
//	    @SuppressWarnings("unchecked")
//	    Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
//	    
//	    // 로그인 체크
//	    if(loginMap != null) {
//	        // 필수 정보들이 모두 입력되었는지 확인
//	        if (mobile1 != null && !mobile1.isEmpty() && mobile2 != null && !mobile2.isEmpty() &&  
//	            mobile3 != null && !mobile3.isEmpty() && firstEmail != null && !firstEmail.isEmpty() &&             
//	            secondEmail != null && !secondEmail.isEmpty() && post != null && !post.isEmpty() &&
//	            addr1 != null && !addr1.isEmpty() && addr2 != null && !addr2.isEmpty()) {
//	            
//	            // 분리 전화번호, 이메일 결합 후 update
//	            MemberDTO memberDto = new MemberDTO();
//	            String phoneNumber = mobile1 + mobile2 + mobile3;
//	            String email = firstEmail + "@" + secondEmail;
//	            
//	            memberDto.setPhone(phoneNumber);
//	            memberDto.setEmail(email);
//	            memberDto.setPost(post);
//	            memberDto.setAddr1(addr1);
//	            memberDto.setAddr2(addr2);
//	            System.out.println("수정된 전화번호 :: " + phoneNumber);
//	            System.out.println("수정된 주소 :: " + post + addr1 + addr2);
//	            memberService.paymentMemberUpdate(memberDto);
//
//	            String mem_id = (String) loginMap.get("MEM_ID");
//	            
//	            dto.setMem_id(mem_id);
//	            dto.setDeliveryFee("무료");
//	            dto.setOrder_state("입금 준비중");
//	            
//	            logger.info("dto ::" + dto);
//	            logger.info("order_no ::" + dto.getOrder_no());
//	            // 단건 주문
//	            orderService.insertOrder(dto);
//	            
//	            // 여러 개의 주문을 동시에 처리하기 위해 insertOrders 메소드를 호출합니다.
//	            List<Integer> orderNumbers = orderService.insertOrders(Arrays.asList(dto));
//	            
//	         // 생성된 주문 번호를 사용하여 주문 상세 페이지로 이동합니다.
//	            if (!orderNumbers.isEmpty()) {
//	                StringBuilder redirectUrl = new StringBuilder("/order/orderDetail.do?");
//	                for (int orderNumber : orderNumbers) {
//	                    redirectUrl.append("order_no=").append(orderNumber).append("&amp;");
//	                }
//	                return "redirect:" + redirectUrl.toString();
//	            } else {
//	                // 주문 번호가 없는 경우 예외 처리
//	                throw new Exception("주문을 처리하는 도중 오류가 발생했습니다.");
//	            }     
//	        } else {
//	            System.out.println("필수 정보가 누락되었습니다.");
//	            model.addAttribute("info", "omission"); 
//	            return "/cart/orderForm.do";
//	        }
//	    } else {
//	        // 로그인을 하지 않았을 경우
//	        logger.info("로그인을 하지 않은 경우");
//	        model.addAttribute("loginChk", "fail");
//	        return "redirect:/member/loginForm.do";
//	    }
//	}
//
//	
//	// orderDetail 이동
//	@RequestMapping("orderDetail.do")
//	public String orderDetail(Model model, HttpSession session, @RequestParam int order_no) throws Exception {
//		@SuppressWarnings("unchecked")
//		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
//		
//		// 로그인 체크
//		if(loginMap != null) {
//			List<OrderDTO> dto = orderService.orderDetail(order_no);	
//			model.addAttribute("dto", dto);
//			return "order/orderDetail";
//		} else {
//			model.addAttribute("loginChk", "fail");
//			return "order/orderDetail";
//		}
//		
//	}
//	
//	
//}
