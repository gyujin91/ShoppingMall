package com.shopping.myapp;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.dto.ProductDTO;
import com.shopping.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	ProductService productService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 제품 리스트
	@RequestMapping(value="/")
	public String productList(Model model, @RequestParam(required=false) String cate_no) throws Exception {
		// required=false로 설정하여 cate_no 매개변수가 없어도 메서드가 실행되도록 설정
		List<ProductDTO> productList = productService.productList(cate_no);
		System.out.println("productList :: " + productList);
		model.addAttribute("productList", productList);	
		return "home";
	}
	
}
