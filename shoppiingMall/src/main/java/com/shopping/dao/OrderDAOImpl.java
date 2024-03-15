package com.shopping.dao;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.OrderDTO;

@Repository
public class OrderDAOImpl implements OrderDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertOrder(OrderDTO dto) throws Exception {
		sqlSession.insert("order.insertOrder", dto);
	}

	@Override
	public List<OrderDTO> orderList(String mem_id) throws Exception {
		return sqlSession.selectList("order.orderList", mem_id);
	}

	@Override
	public Integer totalPrice(String mem_id) throws Exception {
		return sqlSession.selectOne("order.totalPrice", mem_id);
	}

	@Override
	public Date getFirstOrderDate(String mem_id) throws Exception {
		return sqlSession.selectOne("order.getFirstOrderDate", mem_id);
	}

	@Override
	public int orderTotalCnt() throws Exception {
		return sqlSession.selectOne("order.orderTotalCnt");
	}

	@Override
	public void deleteOrder(int order_no) throws Exception {
		sqlSession.update("order.deleteOrder", order_no);
	}

	@Override
	public Integer updatePrice(String mem_id, String order_state) throws Exception {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("mem_id", mem_id);
		params.put("order_state", order_state);
		return sqlSession.selectOne("order.updatePrice", params);
	}

	

	

		
	
	
}
