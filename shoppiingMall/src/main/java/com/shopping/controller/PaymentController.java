package com.shopping.controller;

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

import com.shopping.dto.PaymentDTO;
import com.shopping.service.PaymentService;


@Controller
@RequestMapping("/payment/*")
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@RequestMapping("insertPayment.do")
	public String insertPayment(PaymentDTO dto, HttpSession session, Model model) throws Exception {
	    
		@SuppressWarnings("unchecked")
	    Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
	    
	    if(loginMap != null) {
	        String mem_id = (String) loginMap.get("MEM_ID");
	        dto.setMem_id(mem_id);
	        System.out.println("mem_id ================== " + mem_id);
	        System.out.println("dto.mem_id ================" + dto.getMem_id());
	        System.out.println("mem_name ================== " + dto.getMem_name());
	        System.out.println("order_no ================== " + dto.getOrder_no());
	        paymentService.insertPayment(dto);
			
	        return "redirect:/order/orderList.do";
	    } else {
	        System.out.println("로그인 하지 않은 상태");
	        return "redirect:/member/loginForm.do";
	    }
	}
	
	
}
