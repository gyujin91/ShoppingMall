package com.shopping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.AdminDAO;
import com.shopping.dto.MemberDTO;

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
	public MemberDTO memberRead(String mem_id) throws Exception {
		return adminDao.memberRead(mem_id);
	}

	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		adminDao.memberUpdate(dto);
	}

	@Override
	public void memberDelete(String mem_id) throws Exception {
		adminDao.memberDelete(mem_id);
	}
	
	
}
