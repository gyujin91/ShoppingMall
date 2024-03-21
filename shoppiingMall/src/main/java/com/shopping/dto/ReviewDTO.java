package com.shopping.dto;

import java.util.Date;

public class ReviewDTO {
	private int rno;				// 리뷰 번호(PK)
    private String review_title;	// 리뷰 제목
    private String review_content;	// 리뷰 내용
    private String mem_id;			// 리뷰 작성 회원(일반 유저)
    private String mem_name;		// 리뷰 작성자 이름(일반 유저)
    private int prod_no;			// 상품 고유 번호(외래키)
    private String prod_name;		// 상품 이름
    private String prod_image;		// 상품 이미지
    private Date review_regdate;	// 리뷰 작성일
    private Date review_deldate;	// 리뷰 삭제일
    private String reply;			// 관리자 답글
    private String reply_id;		// 관리자 아이디
    private String reply_name;		// 관리자 이름
    private String useyn;			// 사용 여부
    private Date reply_regdate;		// 답글 작성일
    private Date reply_update;		// 답글 수정일
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public int getProd_no() {
		return prod_no;
	}
	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public String getProd_image() {
		return prod_image;
	}
	public void setProd_image(String prod_image) {
		this.prod_image = prod_image;
	}
	public Date getReview_regdate() {
		return review_regdate;
	}
	public void setReview_regdate(Date review_regdate) {
		this.review_regdate = review_regdate;
	}
	public Date getReview_deldate() {
		return review_deldate;
	}
	public void setReview_deldate(Date review_deldate) {
		this.review_deldate = review_deldate;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getReply_id() {
		return reply_id;
	}
	public void setReply_id(String reply_id) {
		this.reply_id = reply_id;
	}
	public String getReply_name() {
		return reply_name;
	}
	public void setReply_name(String reply_name) {
		this.reply_name = reply_name;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public Date getReply_regdate() {
		return reply_regdate;
	}
	public void setReply_regdate(Date reply_regdate) {
		this.reply_regdate = reply_regdate;
	}
	public Date getReply_update() {
		return reply_update;
	}
	public void setReply_update(Date reply_update) {
		this.reply_update = reply_update;
	}
}
