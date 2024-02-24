package com.shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.PaymentDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertPayment(PaymentDTO dto) throws Exception {
		sqlSession.insert("payment.insertPayment", dto);
	}
	
	@Override
	public PaymentDTO duplicateCheck(int order_no) throws Exception {
		return sqlSession.selectOne("payment.duplicateCheck", order_no);
	}

	@Override
	public List<PaymentDTO> paymentList(String mem_id) throws Exception {
		return sqlSession.selectList("payment.paymentList", mem_id);
	}

	
	
	
	
}
