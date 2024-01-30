package com.shopping.service;

import java.util.Map;

import com.shopping.dto.MemberDTO;

public interface MemberService {
	
	// 회원가입
	public void join(MemberDTO dto) throws Exception;
	
	// 아이디 중복 체크
	public MemberDTO idCheck(String mem_id) throws Exception;
	
	// 로그인
	Map<String, Object> login(String mem_id);
}
