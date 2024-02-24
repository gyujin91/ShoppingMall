package com.shopping.dao;

import java.util.List;

import com.shopping.dto.OrderDTO;

public interface OrderDAO {
	
	// 주문 목록 담기
	public void insertOrder(OrderDTO dto) throws Exception;
	
	// 주문 목록 조회
	public List<OrderDTO> orderList(String mem_id) throws Exception;
	
	// 여러행의 주문번호 조회
	public List<Integer> selectOrderNo(String mem_id) throws Exception;
}
