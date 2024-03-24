package com.shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ReviewDTO> reviewList() throws Exception {
		return sqlSession.selectList("review.reviewList");
	}

	@Override
	public void insertReview(ReviewDTO dto) throws Exception {
		 sqlSession.insert("review.insertReview", dto);
	}

	@Override
	public void deleteReview(int rno) throws Exception {
		sqlSession.update("review.deleteReview", rno);
		
	}

	@Override
	public ReviewDTO getReviewByRno(int rno) throws Exception {
		return sqlSession.selectOne("review.getReviewByRno", rno);
	}
	
	
	
}
