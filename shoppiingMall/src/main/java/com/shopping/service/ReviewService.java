package com.shopping.service;

import java.util.List;

import com.shopping.dto.ReviewDTO;

public interface ReviewService {
	// 리뷰 목록 조회
	public List<ReviewDTO> reviewList() throws Exception;
}
