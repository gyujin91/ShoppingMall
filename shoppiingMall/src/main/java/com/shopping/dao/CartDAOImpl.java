package com.shopping.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.CartDTO;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public void addToCart(CartDTO dto) throws Exception {
		sqlSession.insert("cart.addToCart", dto);
	}

	@Override
	public List<CartDTO> cartList(String mem_id) throws Exception {
		return sqlSession.selectList("cart.cartList", mem_id);
	}
	
	@Override 
	public Integer totalQuantity(String mem_id) throws Exception {
		return sqlSession.selectOne("cart.totalQuantity", mem_id); 
	}
	 
	@Override
	public Map<String, Object> totalData(String mem_id) throws Exception {
		return sqlSession.selectOne("cart.totalData", mem_id);
	}

	@Override
	public void cartDelete(int cart_id) throws Exception {
		sqlSession.delete("cart.cartDelete", cart_id);
	}
	
	@Override
	public void allCartDelete(String mem_id) throws Exception {
		sqlSession.delete("cart.allCartDelete", mem_id);
	}

}
