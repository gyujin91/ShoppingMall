package com.shopping.service;

import java.util.List;

import com.shopping.dto.ReviewDTO;

public interface ReviewService {
	// 리뷰 목록 조회
	public List<ReviewDTO> reviewList() throws Exception;
	
	// 리뷰 작성
	public void insertReview(ReviewDTO dto) throws Exception;
	
	// 리뷰 조회
	public ReviewDTO getReviewByRno(int rno) throws Exception;
	
	// 리뷰 수정
	public void updateReview(ReviewDTO dto) throws Exception;
		
	// 리뷰 삭제
	public void deleteReview(int rno) throws Exception;
}
