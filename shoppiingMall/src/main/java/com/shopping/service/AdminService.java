package com.shopping.service;

import java.util.List;

import com.shopping.dto.MemberDTO;

public interface AdminService {

		// 대쉬보드 회원 목록 불러오기
		public List<MemberDTO> memberList() throws Exception;
		
		// 회원 목록 불러오기
		public List<MemberDTO> allMemberList() throws Exception;
		
		// 회원 정보 상세보기
		public MemberDTO memberRead(String mem_id) throws Exception;
		
		// 회원 정보 수정
		public void memberUpdate(MemberDTO dto) throws Exception;
		
		// 회원 탈퇴
		public void memberDelete(String mem_id) throws Exception;
}
