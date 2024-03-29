package com.shopping.dto;

import java.util.Date;

public class MemberDTO {

	private String mem_id;		// 아이디
	private String mem_pw;		// 비밀번호
	private String mem_name;	// 이름
	private String email;		// 이메일
	private String phone;		// 전화번호
	private String addr1;		// 기본 주소
	private String addr2;		// 상세주소
	private String post;		// 지번
	private String useyn;		// 가입탈퇴여부 가입(Y), 탈퇴(N)
	private int code;			// 회원코드  관리자(1), 일반회원(2)
	private String MEMBER_CODE;
	private Date join_date;		// 회원가입일
	private Date del_date;		// 회원탈퇴일
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMEMBER_CODE() {
		return MEMBER_CODE;
	}
	public void setMEMBER_CODE(String mEMBER_CODE) {
		MEMBER_CODE = mEMBER_CODE;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public Date getDel_date() {
		return del_date;
	}
	public void setDel_date(Date del_date) {
		this.del_date = del_date;
	}	
	
}
