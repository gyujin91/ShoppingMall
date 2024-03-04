package com.shopping.dao;

import java.util.List;
import java.util.Map;

import com.shopping.dto.MemberDTO;
import com.shopping.dto.OrderDTO;

public interface AdminDAO {
	
	// 대쉬보드 회원 목록 불러오기
	public List<MemberDTO> memberList() throws Exception;
	
	// 모든 회원 목록 불러오기
	public List<MemberDTO> allMemberList() throws Exception;
	
	// 회원 정보 상세보기
	public MemberDTO memberInfo(String mem_id) throws Exception;
	
	// 회원 정보 수정
	public void adminUserUpdate(MemberDTO dto) throws Exception;
	
	// 회원 탈퇴
	public void adminUserDelete(String mem_id) throws Exception;
	
	// 주문 목록 조회
	public List<OrderDTO> allOrderList() throws Exception;
	
	// 사용자들 각각의 (주문 * 수량) 금액 조회
	public List<Map<String,Object>> userTotalPrice() throws Exception;
}
