package com.shopping.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.MemberDTO;
import com.shopping.dto.NoticeDTO;
import com.shopping.dto.OrderDTO;
import com.shopping.dto.ReviewDTO;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("admin.memberList");
	}

	@Override
	public List<MemberDTO> allMemberList() throws Exception {
		return sqlSession.selectList("admin.allMemberList");
	}
	
	@Override
	public MemberDTO memberInfo(String mem_id) throws Exception {
		return sqlSession.selectOne("admin.memberInfo", mem_id);
	}

	@Override
	public void adminUserUpdate(MemberDTO dto) throws Exception {
		sqlSession.update("admin.adminUserUpdate", dto);
	}

	@Override
	public void adminUserDelete(String mem_id) throws Exception {
		sqlSession.update("admin.adminUserDelete", mem_id);
	}

	@Override
	public List<OrderDTO> allOrderList() throws Exception {
		return sqlSession.selectList("admin.allOrderList");
	}

	@Override
	public List<Map<String, Object>> userTotalPrice() throws Exception {
		return sqlSession.selectList("admin.userTotalPrice");
	}

	@Override
	public OrderDTO orderInfo(int order_no) throws Exception {
		return sqlSession.selectOne("admin.orderInfo", order_no);
	}

	@Override
	public List<NoticeDTO> allNoticeList() throws Exception {
		return sqlSession.selectList("admin.allNoticeList");
	}

	@Override
	public List<OrderDTO> orderList() throws Exception {
		return sqlSession.selectList("admin.orderList");
	}

	@Override
	public List<ReviewDTO> selectReviewList() throws Exception {
		return sqlSession.selectList("admin.selectReviewList");
	}

	@Override
	public void insertReply(ReviewDTO dto) throws Exception {
		sqlSession.update("admin.insertReply", dto);
	}

	@Override
	public List<Map<String, Object>> monthAmount(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("admin.monthAmount", map);
	}

	@Override
	public List<Map<String, Object>> monthSales(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("admin.monthSales", map);
	}
	
	@Override
	public int totalSales() throws Exception {
		return sqlSession.selectOne("admin.totalSales");
	}

	@Override
	public List<Map<String, Object>> cumulativeSales() throws Exception {
		return sqlSession.selectList("admin.cumulativeSales");
	}

	

	
	
}
