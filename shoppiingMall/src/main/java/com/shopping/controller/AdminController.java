package com.shopping.controller;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shopping.dto.MemberDTO;
import com.shopping.dto.OrderDTO;
import com.shopping.dto.ProductDTO;
import com.shopping.service.AdminService;
import com.shopping.service.OrderService;
import com.shopping.service.ProductService;


@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	// 대쉬보드 회원 목록
	@RequestMapping("admin.do")
	public String memberList(Model model, HttpSession session) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		if(loginMap != null) {
			List<MemberDTO> memberList = adminService.memberList();
			List<OrderDTO> orderList = adminService.allOrderList();
			List<Map<String, Object>> userTotalPrice = adminService.userTotalPrice();
			
			model.addAttribute("memberList", memberList);
			model.addAttribute("orderList", orderList);
			model.addAttribute("userTotalPrice", userTotalPrice);

			return "admin/admin";
		} else {
			System.out.println("관리자만 사용 가능 합니다.");
			return "admin/admin";
		}	
		
	}
	
	// 모든 회원 목록
	@RequestMapping("allMemberList.do")
	public String allMemberList(Model model) throws Exception {
		List<MemberDTO> allMemberList = adminService.allMemberList();
		model.addAttribute("allMemberList", allMemberList);
		return "admin/allMemberList";
	}
	
	// 회원 정보 상세 보기
	@RequestMapping(value = "memberInfo.do", method = RequestMethod.GET)
	public String memberInfo(Model model, @RequestParam String mem_id) throws Exception {
		MemberDTO memberDto = adminService.memberInfo(mem_id);
		
		String phoneNumber = memberDto.getPhone();		
		// 전화번호 분리
		String mobile1 = phoneNumber.substring(0, 3);
		String mobile2 = phoneNumber.substring(3, 7);
		String mobile3 = phoneNumber.substring(7);
		
		model.addAttribute("mobile1", mobile1);
		model.addAttribute("mobile2", mobile2);
		model.addAttribute("mobile3", mobile3);		
		model.addAttribute("memberDto", memberDto);
		return "admin/memberInfo";
	}
	
	// 회원 정보 수정
	@RequestMapping(value = "adminUserUpdate.do", method = RequestMethod.POST)
	public String adminUserUpdate(Model model, MemberDTO dto, @RequestParam String mem_pw, @RequestParam String mobile1, @RequestParam String mobile2,
			@RequestParam String mobile3) throws Exception {
		// 분리된 전화번호를 다시 하나로 합쳐서 phoneNumber 변수에 저장
		String phoneNumber = mobile1 + mobile2 + mobile3;
				
		// 비밀번호가 넘어온 경우 암호화
		if(mem_pw != null && !mem_pw.isEmpty()) {
			String encodeedPassword = pwdEncoder.encode(mem_pw);
			dto.setMem_pw(encodeedPassword);
		}

		// 3개로 분리된 전화번호가 하나 라도 비어 있다면 errorMsg 출력 
		if(mobile1 != null && mobile2 != null & mobile3 != null) {
			dto.setPhone(phoneNumber);
			adminService.adminUserUpdate(dto);
			return "redirect:admin/admin.do";
		} else {
			model.addAttribute("errorMsg", "error");
			return "admin/memberInfo";
		}
		
		
	}
	
	// 회원 탈퇴
	@RequestMapping(value = "adminUserDelete.do", method = RequestMethod.GET)
	public String memberDelete(@RequestParam String mem_id) throws Exception {
		adminService.adminUserDelete(mem_id);
		return "redirect:admin/admin.do";
	}
	
	// 관리자 화면 모든 상품 노출
	@RequestMapping("productList.do")
	public String allProductList(Model model, HttpSession session) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		if(loginMap != null) {
			List<ProductDTO> allList = productService.allProductList();
			
			model.addAttribute("allList", allList);
			return "admin/productList";
		} else {
			System.out.println("로그인 하지 않은 경우");
			model.addAttribute("loginChk", "fail");
			return "admin/productList";
		}
		
	}
	
	// 상품 등록 페이지 이동
	@RequestMapping("productFile.do")
	public String productFile() throws Exception {
		return "admin/productFile";
	}
	
	// 상품 등록
	@RequestMapping(value = "insertProduct.do")
	public String insertProduct(Model model, HttpSession session, ProductDTO pdto, @RequestParam String prod_kind) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		// 로그인 체크
		if(loginMap != null) {
			// 상품 종류 값을 dto에 설정
			pdto.setProd_kind(prod_kind);
			
			productService.insertProduct(pdto);
			
			return "redirect:/admin/productList.do";
		} else {
			model.addAttribute("loginChk", "fail");
			return "admin/productFile";
		}
		
	}
	
	// 파일 업로드
	@RequestMapping(value = "fileUpload.do", method = RequestMethod.POST)
	public String fileUpload(HttpSession session, @RequestParam("file") MultipartFile file, ProductDTO pdto, RedirectAttributes ra) throws Exception {
		@SuppressWarnings("unchecked")
		Map<String, Object> loginMap = (Map<String, Object>) session.getAttribute("loginMap");
		
		if(loginMap != null) {
			// 로그인, 파일 체크 
			if(!file.isEmpty()) {
				try {
					// 파일 업로드 처리
					String uploadPath = "D:\\gyujin\\sideP\\shoppiingMall\\src\\main\\webapp\\resources\\img\\";	// 업로드 파일 저장 경로
					
					String fileRealName = file.getOriginalFilename();	// 원본 파일명
					String uuid = UUID.randomUUID().toString();	// 파일명을 현재 시간과 랜덤 UUID를 조합하여 생성
					String fileName = uuid + "_" + fileRealName;		
					String savePath = session.getServletContext().getRealPath(uploadPath);	// 서버에서 실제 파일이 저장될 경로
					String filePath = savePath + File.pathSeparator + fileName;	// 파일이 저장될 최종 경로 지정
					file.transferTo(new File(filePath));	// 해당 객체 생성 후 해당 경로에 파일 저장
					
					System.out.println("원본 파일명 ::" + fileName);
					System.out.println("실제 파일 저장 경로 ::" + savePath);
					System.out.println("파일이 저장될 최종 경로 ::" + filePath);
					System.out.println("파일 객체 ::" + file);
					
					pdto.setProd_image(uploadPath + fileName);
				} catch(Exception e) {
					e.printStackTrace(); // 파일 업로드 실패
					System.out.println("파일 업로드 실패");
					ra.addFlashAttribute("f", "실패");           
				}
			} else {
				System.out.println("파일이 비어 있습니다.");
			}		
			return "redirect:/admin/productList.do";
		} else {
			return "admin/productFile";
		}		
	}
	
	// 조회수
	@RequestMapping("views.do")
	public String views() throws Exception {
		return "admin/views";
	}
	
	
}
