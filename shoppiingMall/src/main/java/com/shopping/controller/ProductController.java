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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.dto.ProductDTO;
import com.shopping.service.ProductService;


@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	// 객체 주입
	@Autowired
	ProductService productService;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@RequestMapping("itemList.do")
	public String itemListByCategory(Model model, @RequestParam String cate_no) throws Exception {
		List<ProductDTO> itemList;
		if(cate_no != null && !cate_no.isEmpty()) {
			itemList = productService.itemListByCategory(cate_no);
		} else {
			itemList = productService.itemList();
		}
		model.addAttribute("itemList", itemList);
		return "product/itemList";
	}
	
	// 제품 상세보기
	@RequestMapping(value="productDetail.do", method = RequestMethod.GET)
	public String productDetailForm(Model model, @RequestParam int prod_no, HttpSession session) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		ProductDTO dto = productService.productDetail(prod_no);
		dto.setBrand("자체 브랜드");
		dto.setDeliveryFee("무료");
		
		model.addAttribute("loginMap", loginMap);
		model.addAttribute("dto", dto);
		return "product/productDetail";
	}
	
}
