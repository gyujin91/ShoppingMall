package com.shopping.service;

import java.util.List;

import com.shopping.dto.ProductDTO;

public interface ProductService {
	
	// 제품 리스트 
	public List<ProductDTO> productList() throws Exception;
	
	// 아이템 리스트
	public List<ProductDTO> itemList() throws Exception;
	
	// 제품 상세보기
	public ProductDTO productDetail(int prod_no) throws Exception;
}
