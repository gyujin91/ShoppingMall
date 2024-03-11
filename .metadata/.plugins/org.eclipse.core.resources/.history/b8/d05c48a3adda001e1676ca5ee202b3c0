package com.shopping.service;

import java.util.List;

import com.shopping.dto.ProductDTO;

public interface ProductService {
	
	// 메인화면 각각 4개씩 노출 
	public List<ProductDTO> productList(String cate_no) throws Exception;
	
	// 제품 상세보기
	public ProductDTO productDetail(int prod_no) throws Exception;
	
	// 전체 아이템 리스트
	public List<ProductDTO> itemList() throws Exception;
	
	// 카테고리 별 분기
	public List<ProductDTO> itemListByCategory(String cate_no) throws Exception;
	
	// 관리자 화면 모든 상품 노출
	public List<ProductDTO> allProductList() throws Exception;
	
	// 상품 추가
	public void insertProduct(ProductDTO dto) throws Exception;
	
}
