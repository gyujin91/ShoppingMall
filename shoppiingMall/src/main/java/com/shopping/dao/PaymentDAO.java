package com.shopping.dao;

import java.util.List;

import com.shopping.dto.PaymentDTO;

public interface PaymentDAO {
	
	// 결제 정보 등록
	public void insertPayment(PaymentDTO dto) throws Exception; 
	
	// 결제 정보 등록 시 order_no 중복 조회
	public PaymentDTO duplicateCheck(int order_no) throws Exception;
	
	// 결제 목록 조화
	public List<PaymentDTO> paymentList(String mem_id) throws Exception;
}
