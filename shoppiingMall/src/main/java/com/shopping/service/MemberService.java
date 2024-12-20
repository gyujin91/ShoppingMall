package com.shopping.service;

import java.util.Map;

import com.shopping.dto.MemberDTO;

public interface MemberService {
	
	// 회원가입
	public void join(MemberDTO dto) throws Exception;
	
	// 아이디 중복 체크
	public int idCheck(String mem_id) throws Exception;
	
	// 로그인
	Map<String, Object> login(String mem_id);
	
	// 마이페이지
	public MemberDTO myPage(String mem_id) throws Exception;
	
	// 회원 정보 수정
	public void memberUpdate(MemberDTO dto) throws Exception;
	
	// 주문 화면 에서 회원 정보 수정
	public void ordermemberUpdate(MemberDTO memberDto) throws Exception;
		
	
	// 회원 탈퇴
	public void memberDelete(String mem_id) throws Exception;

}
