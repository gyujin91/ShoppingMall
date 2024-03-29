package com.shopping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.CartDAO;
import com.shopping.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	CartDAO cartDao;
	
	@Override
	public void addToCart(CartDTO dto) throws Exception {
		cartDao.addToCart(dto);
	}

	@Override
	public List<CartDTO> cartList(String mem_id) throws Exception {
		return cartDao.cartList(mem_id);
	}
	
	
	@Override 
	public Integer totalQuantity(String mem_id) throws Exception {
		return cartDao.totalQuantity(mem_id); 
	}
	 
	@Override
	public Map<String, Object> totalData(String mem_id) throws Exception {
		return cartDao.totalData(mem_id);
	}

	@Override
	public void cartDelete(int cart_id) throws Exception {
		cartDao.cartDelete(cart_id);
	}

	@Override
	public void allCartDelete(String mem_id) throws Exception {
		cartDao.allCartDelete(mem_id);
	}
	
}
