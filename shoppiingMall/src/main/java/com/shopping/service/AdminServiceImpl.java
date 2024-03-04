package com.shopping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.AdminDAO;
import com.shopping.dto.MemberDTO;
import com.shopping.dto.OrderDTO;

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
	
	
	
}
