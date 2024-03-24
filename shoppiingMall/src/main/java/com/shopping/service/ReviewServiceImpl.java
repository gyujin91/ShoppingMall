package com.shopping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.ReviewDAO;
import com.shopping.dto.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDAO reviewDao;
	
	@Override
	public List<ReviewDTO> reviewList() throws Exception {
		return reviewDao.reviewList();
	}

	@Override
	public void insertReview(ReviewDTO dto) throws Exception {
		reviewDao.insertReview(dto);
	}

	@Override
	public void deleteReview(int rno) throws Exception {
		reviewDao.deleteReview(rno);
	}

	@Override
	public ReviewDTO getReviewByRno(int rno) throws Exception {
		return reviewDao.getReviewByRno(rno);
	}
	
}
