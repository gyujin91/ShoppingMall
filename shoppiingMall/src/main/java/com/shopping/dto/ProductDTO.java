package com.shopping.dto;

import java.sql.Date;

public class ProductDTO {
	
	private int prod_no;		// 제품번호
	private String prod_name;	// 제품명
	private String prod_kind;	// 제품 종류
	private String cate_no;		// 카테고리 번호
	private int price;			// 가격
	private String prod_content;// 제품 설명
	private String prod_image;	// 제품 이미지
	private String useyn;		// 사용 여부
	private Date regdate;		// 등록일
	private Date deldate;		// 삭제일
	private String brand;		// 브랜드
	private String deliveryFee;	// 배송비
	    
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
	public String getProd_kind() {
		return prod_kind;
	}
	public void setProd_kind(String prod_kind) {
		this.prod_kind = prod_kind;
	}
	public String getCate_no() {
		return cate_no;
	}
	public void setCate_no(String cate_no) {
		this.cate_no = cate_no;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProd_content() {
		return prod_content;
	}
	public void setProd_content(String prod_content) {
		this.prod_content = prod_content;
	}
	public String getProd_image() {
		return prod_image;
	}
	public void setProd_image(String prod_image) {
		this.prod_image = prod_image;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getDeldate() {
		return deldate;
	}
	public void setDeldate(Date deldate) {
		this.deldate = deldate;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(String deliveryFee) {
		this.deliveryFee = deliveryFee;
	}
	
}
