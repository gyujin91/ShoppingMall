package com.shopping.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAOImpl implements OrderDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void orderInsert(Map<String, Object> params) throws Exception {
		sqlSession.insert("order.insertOrder", params);
	}

	
	
	
}
