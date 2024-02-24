package com.shopping.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.dto.CartDTO;
import com.shopping.dto.MemberDTO;
import com.shopping.dto.OrderDTO;
import com.shopping.dto.PaymentDTO;
import com.shopping.service.CartService;
import com.shopping.service.MemberService;
import com.shopping.service.OrderService;
import com.shopping.service.PaymentService;


@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	CartService cartService;
	
	@Autowired
	PaymentService paymentService;
	
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	// 주문 화면 정보
	@RequestMapping("orderForm.do")
	public String order(HttpSession session, Model model) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		// 로그인 체크
		if(loginMap != null) {
			String mem_id = (String) loginMap.get("MEM_ID");
			// 회원 정보
			MemberDTO member = memberService.myPage(mem_id);
			
			// 전화번호 분리
			String phoneNumber = member.getPhone();
			String mobile1 = phoneNumber.substring(0, 3);
			String mobile2 = phoneNumber.substring(3, 7);
			String mobile3 = phoneNumber.substring(7);
			
			// 이메일 주소를 "@" 기준으로 분할하여 추출
			String[] email = member.getEmail().split("@");
			String firstEmail = email[0];
			String secondEmail = email[1];
			
			// 장바구니 정보
			List<CartDTO> cartList = cartService.cartList(mem_id);	// 제품 목록
			Integer totalQuantity = cartService.totalQuantity(mem_id);	// 장바구니 상품 총 수량
			Map<String, Object> totalData = cartService.totalData(mem_id);	// 장바구니 합계 가격, 택배비
			
			for(CartDTO cart: cartList) {
				cart.setDeliveryFee("무료");	// 배송비
				cart.setDeliveryMethod("택배");	// 배송 수단
			}
			
			 // totalData가 null이거나 total_price, total_data 키의 값이 null인 경우
			if(totalData == null || totalData.get("TOTAL_PRICE") == null || totalData.get("TOTAL_DATA") == null) {
				totalData.put("TOTAL_PRICE", 0);	// 합계 가격 = 디폴트 값으로 0 설정
				totalData.put("DELIVERYFEE", 0);	// 배송비 = 디폴트 값으로 0 설정
				totalData.put("TOTAL_DATA", 0);		// 합계 가격 + 배송비 = 디폴트 값으로 0 설정
			 }
			
			model.addAttribute("member", member);
			model.addAttribute("mobile1", mobile1);
			model.addAttribute("mobile2", mobile2);
			model.addAttribute("mobile3", mobile3);
			model.addAttribute("firstEmail", firstEmail);
			model.addAttribute("secondEmail", secondEmail);
			model.addAttribute("cartList", cartList);
			model.addAttribute("totalQuantity", totalQuantity);
			model.addAttribute("totalData", totalData);
			model.addAttribute("zeroQuantity", totalQuantity != null ? totalQuantity : 0);
			
			return "order/orderForm";
		} else {
			// 로그인을 하지 않았을 경우
			logger.info("로그인을 하지 않은 경우");
			model.addAttribute("loginChk", "fail");
			return "redirect:/member/loginForm.do";
		}	
	}
	
	// 상품 주문 및 결제 정보 등록
	@RequestMapping("insertOrder.do")
	public String insertOrder(HttpSession session, Model model, OrderDTO oDto, @RequestParam String mobile1, 
	        @RequestParam String mobile2, @RequestParam String mobile3, @RequestParam String firstEmail,
	        @RequestParam String secondEmail, @RequestParam String post, @RequestParam String addr1, 
	        @RequestParam String addr2, @RequestParam int order_no) throws Exception {
	    
	    @SuppressWarnings("unchecked")
	    Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
	    
	    // 로그인 체크
	    if(loginMap != null) {
	        // 필수 정보들이 모두 입력되었는지 확인
	        if (mobile1 != null && !mobile1.isEmpty() && mobile2 != null && !mobile2.isEmpty() &&  
	            mobile3 != null && !mobile3.isEmpty() && firstEmail != null && !firstEmail.isEmpty() &&             
	            secondEmail != null && !secondEmail.isEmpty() && post != null && !post.isEmpty() &&
	            addr1 != null && !addr1.isEmpty() && addr2 != null && !addr2.isEmpty()) {
	            
	            // 분리 전화번호, 이메일 결합 후 update
	            MemberDTO memberDto = new MemberDTO();
	            String phoneNumber = mobile1 + mobile2 + mobile3;
	            String email = firstEmail + "@" + secondEmail;
	            
	            // 회원 정보 수정
	            memberDto.setPhone(phoneNumber);
	            memberDto.setEmail(email);
	            memberDto.setPost(post);
	            memberDto.setAddr1(addr1);
	            memberDto.setAddr2(addr2);
	            System.out.println("수정된 전화번호 :: " + phoneNumber);
	            System.out.println("수정된 주소 :: " + post + addr1 + addr2);
	            memberService.paymentMemberUpdate(memberDto);

	            String mem_id = (String) loginMap.get("MEM_ID");
	            
	            // 주문 정보 세팅
	            oDto.setMem_id(mem_id);
	            oDto.setDeliveryFee("무료");
	            oDto.setOrder_state("주문 완료");	            
	            orderService.insertOrder(oDto);
	            
	            // ============================================================================
          
	            // 결제 정보 세팅
	            List<OrderDTO> orderList = orderService.orderList(mem_id);
	            // 주문버호가 중복 되는지 확인
	            PaymentDTO duplicateCheck = paymentService.duplicateCheck(order_no);
	            PaymentDTO payment = new PaymentDTO();
	            for(OrderDTO order : orderList) {	    
	            	if(duplicateCheck == null) {
	            		payment.setOrder_no(order.getOrder_no());
		            	payment.setMem_id(order.getMem_id());
		            	payment.setMem_name(order.getMem_name());
		            	payment.setPayment_price(order.getPrice());
		            	payment.setPayment_date(order.getOrder_date());
		            	payment.setDeposit_bank("기업 123456789 주식 대부");
		            	payment.setPayment_method("무통장 입금");
	            	} else {
	            		System.out.println("================= order_no 중복 =================");
	            	}	            	
	            }
	            paymentService.insertPayment(payment);	            
	            
	            // ============================================================================
	            return "redirect:/order/orderList.do";
	        } else {
	            System.out.println("필수 정보 누락");
	            return "redirect:/order/orderForm.do";
	        }
	    } else {
	        // 로그인을 하지 않았을 경우
	        logger.info("로그인을 하지 않은 경우");
	        model.addAttribute("loginChk", "fail");
	        return "redirect:/member/loginForm.do";
	    }
	}
	
	// 주문 목록 조회
	@RequestMapping("orderList.do")
	public String orderDetail(Model model, HttpSession session, @RequestParam String mem_id) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		// 로그인 체크
		if(loginMap != null) {
			List<OrderDTO> orderList = orderService.orderList(mem_id);
			model.addAttribute("orderList", orderList);
			return "order/orderList";
		} else {
			model.addAttribute("loginChk", "fail");
			return "order/orderList";
		}
		
	}
	
	
}
