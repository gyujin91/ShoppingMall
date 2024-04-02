package com.shopping.service;

import java.util.List;
import java.util.Map;

import com.shopping.dto.MemberDTO;
import com.shopping.dto.NoticeDTO;
import com.shopping.dto.OrderDTO;
import com.shopping.dto.ReviewDTO;

public interface AdminService {

	// 대쉬보드 회원 목록 불러오기
	public List<MemberDTO> memberList() throws Exception;
	
	// 회원 목록 불러오기
	public List<MemberDTO> allMemberList() throws Exception;
	
	// 회원 정보 상세보기
	public MemberDTO memberInfo(String mem_id) throws Exception;
	
	// 회원 정보 수정
	public void adminUserUpdate(MemberDTO dto) throws Exception;
	
	// 회원 탈퇴
	public void adminUserDelete(String mem_id) throws Exception;
	
	// 주문 목록 조회
	public List<OrderDTO> allOrderList() throws Exception;
	
	// 대쉬보드 주문 목록 조회
	public List<OrderDTO> orderList() throws Exception;
	
	// 주문 상세 목록 조회
	public OrderDTO orderInfo(int order_no) throws Exception;
	
	// 사용자들 각각의 (주문 * 수량) 금액 조회
	public List<Map<String,Object>> userTotalPrice() throws Exception;
	
	// 모든 공지글 조회
	public List<NoticeDTO> allNoticeList() throws Exception;
	
	// 모든 리뷰 조회
	public List<ReviewDTO> selectReviewList() throws Exception;
	
	// 관리자 댓글
	public void insertReply(ReviewDTO dto) throws Exception;
	
	// 월 별 매출액
	public List<Map<String, Object>> monthAmount(Map<String, Object> map) throws Exception;
	
	// 월 별 판매량
	public List<Map<String, Object>> monthSales(Map<String, Object> map) throws Exception;
	
	// 현재 년도 총 매출액
	public int totalSales() throws Exception;
	
	// 총 매출 액
	public List<Map<String, Object>> cumulativeSales() throws Exception;
}
