package com.shopping.dto;

import java.util.Date;

public class OrderDTO {
	private int order_no;			// 주문 번호
	private String mem_id;			// 주문자 아이디
	private String mem_name;		// 주문자 이름
	private String phone;			// 전화번호
	private String email;			// 이메일
	private int prod_no;			// 상품 번호
	private String prod_name;		// 상품명
	private String prod_image;		// 상품 이미지
	private int price;				// 상품 가격
	private int quantity;			// 상품 수량
	private int MONEY;				// 합계(가격 * 수량)
	private String size;			// 상품 사이즈
	private String deliveryFee;		// 배송비
	private String post;			// 우편 번호
	private String addr1;			// 주소
	private String addr2;			// 상세 주소
	private String order_state;		// 주문 상태	(디폴트: 배송 준비 -> 배송 완료)
	private String payment_state;	// 결제 상태	(디폴트: 입금 대기 -> 입금 완료)
	private String payment_method;	// 결제 방식
	private Date order_date;		// 주문일
	private Date del_date;			// 주문 취소일
	
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getMONEY() {
		return MONEY;
	}
	public void setMONEY(int mONEY) {
		MONEY = mONEY;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(String deliveryFee) {
		this.deliveryFee = deliveryFee;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
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
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}
	public String getPayment_state() {
		return payment_state;
	}
	public void setPayment_state(String payment_state) {
		this.payment_state = payment_state;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public Date getDel_date() {
		return del_date;
	}
	public void setDel_date(Date del_date) {
		this.del_date = del_date;
	}
	
	
	
	
}
