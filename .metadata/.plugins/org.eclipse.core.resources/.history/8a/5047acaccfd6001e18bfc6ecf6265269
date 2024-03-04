package com.shopping.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.dto.MemberDTO;
import com.shopping.service.AdminService;


@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	/*
	 * // 관리자 데시보드
	 * 
	 * @RequestMapping("admin.do") public String admin() throws Exception { return
	 * "admin/admin"; }
	 */
	
	// 대쉬보드 회원 목록
	@RequestMapping("admin.do")
	public String memberList(Model model) throws Exception {
		List<MemberDTO> memberList = adminService.memberList();
		model.addAttribute("memberList", memberList);
		return "admin/admin";
	}
	
	// 모든 회원 목록
	@RequestMapping("list.do")
	public String allMemberList(Model model) throws Exception {
		List<MemberDTO> allMemberList = adminService.allMemberList();
		model.addAttribute("allMemberList", allMemberList);
		return "admin/allMemberList";
	}
	
	// 회원 정보 상세 보기
	@RequestMapping(value = "read.do", method = RequestMethod.GET)
	public String memberRead(Model model, @RequestParam String mem_id) throws Exception {
		MemberDTO memberDto = adminService.memberRead(mem_id);
		model.addAttribute("memberDto", memberDto);
		return "admin/userInfo";
	}
	
	// 회원 정보 수정
	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String memberUpdate(MemberDTO dto) throws Exception {
		adminService.memberUpdate(dto);
		return "redirect:/";
	}
	
	// 회원 탈퇴
	@RequestMapping(value = "delete.do", method = RequestMethod.GET)
	public String memberDelete(@RequestParam String mem_id) throws Exception {
		adminService.memberDelete(mem_id);
		return "redirect:/";
	}
	
	// 조회수
	@RequestMapping("views.do")
	public String views() throws Exception {
		return "admin/views";
	}
	
	
}
