package com.shopping.controller;

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
import com.shopping.service.CartService;
import com.shopping.service.MemberService;


@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	@Autowired
	CartService cartService;
	
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	// 장바구니 목록 조회
	@RequestMapping("cart.do")
	public String cart(HttpSession session, Model model) throws Exception {
	    // 세션으로 로그인 여부 체크
	    @SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");

	    if (loginMap != null) {
	        // 로그인 상태
	        String mem_id = (String) loginMap.get("MEM_ID");
	        System.out.println("======================= | 로그인 ID :: " + mem_id + "|=======================");

	        List<CartDTO> cartList = cartService.cartList(mem_id);	// 상품 목록
	        Integer totalQuantity = cartService.totalQuantity(mem_id);	// 상품 총수량
	        Map<String, Object> totalData = cartService.totalData(mem_id);	// 상품 합계가격 + 택배비
	        
	        // 장바구니 목록에 배송 정보 추가
	        for (CartDTO cart : cartList) {
	            cart.setDeliveryFee("무료");
	            cart.setDeliveryMethod("택배");
	        }
	        // totalData가 null이거나 total_price, total_data 키의 값이 null인 경우
	        if(totalData == null || totalData.get("TOTAL_PRICE") == null || totalData.get("TOTAL_DATA") == null) {
	        	totalData.put("TOTAL_PRICE", 0);	// 합계 가격 = 디폴트 값으로 0 설정
	        	totalData.put("DELIVERYFEE", 0);	// 배송비 = 디폴트 값으로 0 설정
	        	totalData.put("TOTAL_DATA", 0);		// 합계 가격 + 배송비 = 디폴트 값으로 0 설정
	        }
	        
	        if(cartList == null || cartList.isEmpty()) {
	        	System.out.println("장바구니가  비어있습니다.");
	        	model.addAttribute("cart", "empty");
	        }

	        model.addAttribute("mem_id", mem_id);
	        model.addAttribute("cartList", cartList);        
	        model.addAttribute("totalQuantity", totalQuantity);
	        model.addAttribute("totalData", totalData);
	        
	        // totalQuantity가 0 일때 NullPointException이 발생 할 경우 예외 처리
	        // 예외처리: totalQuantity가 null인 경우 0으로 설정
	        model.addAttribute("zeroQuantity", totalQuantity != null ? totalQuantity : 0);
	        // model.addAttribute("isTotalQuantityZero", totalQuantity == 0);
	        return "cart/cart";
	    } else {
	        // 로그인 하지 않은 상태 
	        System.out.println("로그인하지 않은 상태..");
	        // 로그인 페이지로 리다이렉트
	        model.addAttribute("loginChk", "fail");
	        return "cart/cart";
	    }
	}
	
	// 장바구니 담기
	@RequestMapping("addToCart.do")
	public String addToCart(Model model, CartDTO dto, HttpSession session, @RequestParam String size, @RequestParam int quantity) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		if(loginMap != null) {
			// 로그인 체크 
			String mem_id = (String) loginMap.get("MEM_ID");
			
			// CartDTO 객체에 mem_id 설정
			dto.setMem_id(mem_id);
			dto.setSize(size);
			dto.setQuantity(quantity);
			cartService.addToCart(dto);

			System.out.println("======================= | 로그인 ID :: " + mem_id + "|=======================");
			
			return "redirect:/cart/cart.do";
		} else {		
			System.out.println("로그인하지 않은 상태..");
			// 로그인 페이지로 리다이렉트
			return "redirect:/member/loginForm.do";
		}
		
	}
	
	// 장바구니 상품 삭제
	@RequestMapping("cartDelete.do")
	public String cartDelete(@RequestParam int cart_id) throws Exception {
		cartService.cartDelete(cart_id);
		// 삭제 후에도 현재 페이지에 머무르도록 현재 페이지로 리다이렉트
	    return "redirect:/cart/cart.do";
	}
	
	// 주문 완료 시 해당 아이디의 장바구니 모두 삭제
	@RequestMapping("allCartDelete.do")
	public String allCartDelete(@RequestParam String mem_id) throws Exception {
		cartService.allCartDelete(mem_id);
	    return "redirect:/order/orderInfo.do?mem_id=" + mem_id;
	}
	
}
