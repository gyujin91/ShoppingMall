package com.shopping.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.OrderDAO;
import com.shopping.dto.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDAO orderDao;

	@Override
	public void insertOrder(OrderDTO dto) throws Exception {
		orderDao.insertOrder(dto);
	}

	@Override
	public List<OrderDTO> orderList(String mem_id) throws Exception {
		return orderDao.orderList(mem_id);
	}

	@Override
	public Integer totalPrice(String mem_id) throws Exception {
		return orderDao.totalPrice(mem_id);
	}

	@Override
	public Date getFirstOrderDate(String mem_id) throws Exception {
		return orderDao.getFirstOrderDate(mem_id);
	}

	@Override
	public int orderTotalCnt() throws Exception {
		return orderDao.orderTotalCnt();
	}

	@Override
	public void deleteOrder(int order_no) throws Exception {   
		orderDao.deleteOrder(order_no);
	}

	@Override
	public Integer updatePrice(String mem_id, String order_state) throws Exception {
		return orderDao.updatePrice(mem_id, order_state);
	}
	
	
}
