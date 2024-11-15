package com.shopping.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

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
			return "order/orderForm";
		}	
	}
	
	// 상품 주문
	@RequestMapping("insertOrder.do")
	public String insertOrder(Model model, HttpSession session, OrderDTO oDTO,
	        @RequestParam String mobile1, @RequestParam String mobile2, @RequestParam String mobile3,
	        @RequestParam String post, @RequestParam String addr1, @RequestParam String addr2,
	        @RequestParam String firstEmail, @RequestParam String secondEmail, @RequestParam String mem_id) throws Exception {
	    @SuppressWarnings("unchecked")
	    Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");

	    if (loginMap != null) {

	        if ((mobile1 != null && !mobile1.isEmpty()) && (mobile2 != null && !mobile2.isEmpty())
	                && (mobile3 != null && !mobile3.isEmpty()) && (post != null && !post.isEmpty())
	                && (addr1 != null && !addr2.isEmpty()) && (addr2 != null && !addr2.isEmpty())
	                && (firstEmail != null && !firstEmail.isEmpty()) && (secondEmail != null && !secondEmail.isEmpty())) {

	            // 분리된 전화번호, 이메일 결합 후 업데이트
	            MemberDTO mDTO = new MemberDTO();
	            String phone = mobile1 + mobile2 + mobile3;
	            String email = firstEmail + "@" + secondEmail;
	            
	            // 회원 정보 세팅
	            mDTO.setMem_id(mem_id);
	            mDTO.setPhone(phone);
	            mDTO.setEmail(email);
	            mDTO.setPost(post);
	            mDTO.setAddr1(addr1);
	            mDTO.setAddr2(addr2);
	            System.out.println("로그인 아이디 : " + mem_id);
	            System.out.println("변경된 전화번호 : " + phone);
	            System.out.println("변경된 주소 : " + post + "\t" + addr1 + "\t" + addr2);
	            memberService.ordermemberUpdate(mDTO);
	            
	            // 주문 정보 세팅
	            oDTO.setDeliveryFee("무료");
	            oDTO.setOrder_state("orderCompleted");
	            oDTO.setPayment_state("depositCompleted");
	            oDTO.setPayment_method("bankTransfer");	
	            orderService.insertOrder(oDTO); 
	            
	            model.addAttribute("loginMap", loginMap);
	            return "redirect:/order/orderInfo.do?mem_id=" + mem_id;
	        } else {
	            System.out.println("필수 정보 누락");
	            return "redirect:/order/orderForm.do";
	        }
	    } else {
	        // 로그인을 하지 않았을 경우
	        model.addAttribute("loginChk", "fail");
	        return "redirect:/member/loginForm.do";
	    }
	}

	
	// 주문 목록 조회
	@RequestMapping("orderInfo.do")
	public String orderInfo(Model model, HttpSession session, @RequestParam String mem_id) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		// 로그인 체크
		if(loginMap != null) {
			
			String member_id = (String) loginMap.get("MEM_ID");
			MemberDTO memberDTO = memberService.myPage(member_id);		// 회원 정보	
			List<OrderDTO> orderList = orderService.orderList(member_id);	// 주문 목록
			Integer totalPrice = orderService.totalPrice(member_id);	// 합계(가격 * 수량)
			Date firstOrderDate = orderService.getFirstOrderDate(member_id);	// 주문날짜 중 첫번쨰 날짜만 조회
			Integer updateTotalPrice = orderService.updateTotalPrice(member_id);	// 주문 취소 후 변경 된 주문 금액
			Integer resultTotalPrice = orderService.resultTotalPrice(member_id); // 모든 주문이 취소 됐을 경우 최종 금액
			
			// 모든 주문이 취소 됐을 경우 최종 금액을 0원으로 초기화
			if(resultTotalPrice == null) {
				resultTotalPrice = 0;
			}
			
			// 분할 된 주소 합치기
			StringBuilder addressBuilder = new StringBuilder();
			addressBuilder.append(memberDTO.getPost()).append(" ");
			addressBuilder.append(memberDTO.getAddr1()).append(" ");
			addressBuilder.append(memberDTO.getAddr2());
			String address = addressBuilder.toString();
			
			model.addAttribute("memberDTO", memberDTO);
			model.addAttribute("orderList", orderList);
			model.addAttribute("totalPrice", totalPrice);
			model.addAttribute("firstOrderDate", firstOrderDate);
			model.addAttribute("address", address);
			model.addAttribute("updateTotalPrice", updateTotalPrice);
			model.addAttribute("resultTotalPrice", resultTotalPrice);
			
			// 전화 번호 마스킹
			if (memberDTO != null) {
			    String phoneNumber = memberDTO.getPhone();
			    if (phoneNumber != null && !phoneNumber.isEmpty()) {
			        StringBuilder maskedPhoneNumber = new StringBuilder();
			        if (phoneNumber.length() == 11) {
			            // 전화번호가 11자리인 경우 (010-1234-5678)
			            maskedPhoneNumber.append(phoneNumber.substring(0, 3)); // 앞부분 (010)
			            maskedPhoneNumber.append("-****-"); // 중간 4자리 마스킹 처리
			            maskedPhoneNumber.append(phoneNumber.substring(7)); // 뒷부분 (5678)
			        } else if (phoneNumber.length() == 10) {
			            // 전화번호가 10자리인 경우 (010-123-4567)
			            maskedPhoneNumber.append(phoneNumber.substring(0, 3)); // 앞부분 (010)
			            maskedPhoneNumber.append("-***-"); // 중간 3자리 마스킹 처리
			            maskedPhoneNumber.append(phoneNumber.substring(6)); // 뒷부분 (4567)
			        }
			        model.addAttribute("phoneNumber", maskedPhoneNumber.toString());
			    }
			} 
			
			// 이름 마스킹
			String mem_name = memberDTO.getMem_name();
			
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
			
			return "order/orderInfo";
		} else {
			// 로그인을 하지 않았을 경우
			model.addAttribute("loginChk", "fail");
			return "order/orderInfo";
		}
		
	}
	
	// 주문 취소
	@RequestMapping("deleteOrder.do")
	public String deleteOrder(Model model, HttpSession session, @RequestParam int order_no) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		if(loginMap != null) {
			orderService.deleteOrder(order_no);
			
			return "redirect:/order/orderInfo.do";
		} else {
			// 로그인을 하지 않았을 경우
			model.addAttribute("loginChk", "fail");
			return "order/orderInfo";
		}
	}
	
	
}
