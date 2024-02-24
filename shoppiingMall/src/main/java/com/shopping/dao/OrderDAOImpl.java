package com.shopping.dao;


import java.util.List;

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
	public List<Integer> selectOrderNo(String mem_id) throws Exception {
		return null;
	}	
}
