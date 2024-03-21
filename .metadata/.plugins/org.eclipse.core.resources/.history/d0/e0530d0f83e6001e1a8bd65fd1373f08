package com.shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.ReplyDTO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ReplyDTO> selectReply(int review_no) throws Exception {
		return sqlSession.selectList("reply.selectReply", review_no);
	}

	
}
