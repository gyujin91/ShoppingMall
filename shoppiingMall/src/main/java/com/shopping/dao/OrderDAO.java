package com.shopping.dao;

import java.util.Date;
import java.util.List;

import com.shopping.dto.OrderDTO;

public interface OrderDAO {
	
	// 주문 목록 담기
	public void insertOrder(OrderDTO dto) throws Exception;
	
	// 주문 목록 조회
	public List<OrderDTO> orderList(String mem_id) throws Exception;
	
	// 가격 * 수량 총 합계
	public Integer totalPrice(String mem_id) throws Exception;
	
	// 첫번째 주문 날짜만 조회
	public Date getFirstOrderDate(String mem_id) throws Exception;
}
