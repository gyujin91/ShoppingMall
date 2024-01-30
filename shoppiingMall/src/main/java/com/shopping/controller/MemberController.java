package com.shopping.controller;

import java.util.Map;

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

import com.shopping.dto.MemberDTO;
import com.shopping.service.MemberService;
//import com.shopping.util.PasswordUtils;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
//	private PasswordEncoder passwordEncoder;
	BCryptPasswordEncoder pwdEncoder;
	
//	@Autowired
//	PasswordUtils generateRandomPassword;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	// 회원가입 폼 이동
	@RequestMapping("joinForm.do")
	public String joinForm() throws Exception {
		return "member/joinForm";
	}
	
	@RequestMapping(value = "/secuTest", method = RequestMethod.GET)
    public void secuTest() {
        
        String rawPassword = "Drw15963!!";  //인코딩 전 메서드
        String encdoePassword1;      // 인코딩된 메서드
        String encdoePassword2;      // 똑같은 비밀번호 데이터를 encdoe()메서드를 사용했을 때 동일한 인코딩된 값이 나오는지 확인하기 위해 추가
        
        encdoePassword1 = pwdEncoder.encode(rawPassword);
        encdoePassword2 = pwdEncoder.encode(rawPassword);
        
        // 인코딩된 패스워드 출력
        System.out.println("encdoePassword1 : " +encdoePassword1);
        System.out.println(" encdoePassword2 : " + encdoePassword2);
        
        String truePassowrd = "Drw15963!!";
        String falsePassword = "abcd1234";
        
        System.out.println("truePassword verify : " + pwdEncoder.matches(truePassowrd, encdoePassword1));
        System.out.println("falsePassword verify : " + pwdEncoder.matches(falsePassword, encdoePassword1));    
    
	}
	
	// 회원가입
	@RequestMapping(value = "join.do")
	public String join(MemberDTO dto, @RequestParam String mem_id, Model model) throws Exception {
		String mem_pw = dto.getMem_pw();
		// 패스워드 암호화
		String pwd = pwdEncoder.encode(mem_pw);
		dto.setMem_pw(pwd);
		memberService.join(dto);
		return "redirect:/";
	}

	// 아이디 중복 체크
	
	// 로그인 폼 이동
	@RequestMapping("loginForm.do")
	public String loginForm() throws Exception {
		return "member/loginForm";
	}
	
	// 로그인
	@RequestMapping("login.do")
	public String login(Model model, @RequestParam String mem_id, @RequestParam String mem_pw, HttpSession session) throws Exception {
		Map<String, Object> loginMap = memberService.login(mem_id);
		String url = "";
		
		if(loginMap == null) {
			model.addAttribute("loginCheck", "idFail");
			url = "member/loginForm";
		} else if(!mem_pw.equals(loginMap.get("MEM_PW").toString())) {
			model.addAttribute("loginCheck", "pwFail");
			url = "member/loginForm";
		} else {
			session.setAttribute("loginMap", loginMap);
			url = "redirect:/";
		}
		return url;
		
		
	}
	
	// 로그아웃
	@RequestMapping("logOut.do")
	 public String logOut(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}

	
}