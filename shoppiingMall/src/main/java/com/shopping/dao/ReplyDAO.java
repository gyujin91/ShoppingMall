package com.shopping.dao;

import java.util.List;

import com.shopping.dto.ReplyDTO;

public interface ReplyDAO {
	// 리뷰 답글 조회
	List<ReplyDTO> selectReply(int review_no) throws Exception;
}
