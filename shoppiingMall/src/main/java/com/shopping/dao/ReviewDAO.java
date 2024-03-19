package com.shopping.dao;

import java.util.List;

import com.shopping.dto.ReviewDTO;

public interface ReviewDAO {
	// 리뷰 목록 조회
	public List<ReviewDTO> reviewList() throws Exception;
}
