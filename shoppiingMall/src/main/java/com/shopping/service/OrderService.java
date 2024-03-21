package com.shopping.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.shopping.dto.OrderDTO;

public interface OrderService {
	
	// 주문 목록 담기
	public void insertOrder(OrderDTO dto) throws Exception;
	
	// 주문 상세 목록 조회
	public List<OrderDTO> orderList(String mem_id) throws Exception;
	
	// 가격 * 수량 총 합계
	public Integer totalPrice(String mem_id) throws Exception;
	
	// 첫번째 주문 날짜만 조회
	public Date getFirstOrderDate(String mem_id) throws Exception;
	
	// 주문 총 건 수
	public int orderTotalCnt() throws Exception;
	
	// 주문 취소
	public void deleteOrder(int order_no) throws Exception;
	
	// 주문 취소 후 변경 된 주문 금액
	public Integer updatePrice(@Param("mem_id") String mem_id, @Param("order_state") String order_state) throws Exception;
	
	// 리뷰 화면에서 주문 정보 조회
	public List<OrderDTO> completedOrderList(String mem_id) throws Exception;
	
	// 리뷰 화면에서 선택 된 주문 정보
	public OrderDTO selectedProdNo(int prod_no) throws Exception;
}
