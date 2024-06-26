package com.shopping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.AdminDAO;
import com.shopping.dto.MemberDTO;
import com.shopping.dto.NoticeDTO;
import com.shopping.dto.OrderDTO;
import com.shopping.dto.ReviewDTO;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDAO adminDao;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return adminDao.memberList();
	}

	@Override
	public List<MemberDTO> allMemberList() throws Exception {
		return adminDao.allMemberList();
	}

	@Override
	public MemberDTO memberInfo(String mem_id) throws Exception {
		return adminDao.memberInfo(mem_id);
	}

	@Override
	public void adminUserUpdate(MemberDTO dto) throws Exception {
		adminDao.adminUserUpdate(dto);
	}

	@Override
	public void adminUserDelete(String mem_id) throws Exception {
		adminDao.adminUserDelete(mem_id);
	}

	@Override
	public List<OrderDTO> allOrderList() throws Exception {
		return adminDao.allOrderList();
	}

	@Override
	public List<Map<String, Object>> userTotalPrice() throws Exception {
		return adminDao.userTotalPrice();
	}

	@Override
	public OrderDTO orderInfo(int order_no) throws Exception {
		return adminDao.orderInfo(order_no);
	}

	@Override
	public List<NoticeDTO> allNoticeList() throws Exception {
		return adminDao.allNoticeList();
	}

	@Override
	public List<OrderDTO> orderList() throws Exception {
		return adminDao.orderList();
	}

	@Override
	public List<ReviewDTO> selectReviewList() throws Exception {
		return adminDao.selectReviewList();
	}

	@Override
	public void insertReply(ReviewDTO dto) throws Exception {
		adminDao.insertReply(dto);
	}

	@Override
	public List<Map<String, Object>> monthAmount(Map<String, Object> map) throws Exception {
		return adminDao.monthAmount(map);
	}

	@Override
	public List<Map<String, Object>> monthSales(Map<String, Object> map) throws Exception {
		return adminDao.monthSales(map);
	}
	
	@Override
	public int totalSales() throws Exception {
		return adminDao.totalSales();
	}

	@Override
	public List<Map<String, Object>> cumulativeSales() throws Exception {
		return adminDao.cumulativeSales();
	}

	

	
	
	
	
}
