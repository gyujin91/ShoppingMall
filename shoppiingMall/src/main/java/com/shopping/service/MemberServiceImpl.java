package com.shopping.service;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.MemberDAO;
import com.shopping.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDao;
	
	@Override
	public void join(MemberDTO dto) throws Exception {
		memberDao.join(dto);
	}

	@Override
	public int idCheck(String mem_id) throws Exception {
		return memberDao.idCheck(mem_id);		
	}

	@Override
	public Map<String, Object> login(String mem_id) {
		return memberDao.login(mem_id);
	}

	@Override
	public MemberDTO myPage(String mem_id) throws Exception {
		return memberDao.myPage(mem_id);
	}

	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		memberDao.memberUpdate(dto);
	}
	
	@Override
	public void ordermemberUpdate(MemberDTO memberDto) throws Exception {
		memberDao.ordermemberUpdate(memberDto);		
	}

	@Override
	public void memberDelete(String mem_id) throws Exception {
		memberDao.memberDelete(mem_id);
	}
	
}
