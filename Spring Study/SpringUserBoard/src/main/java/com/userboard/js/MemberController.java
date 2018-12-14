package com.userboard.js;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.userboard.js.dto.BoardDTO;
import com.userboard.js.dto.MemberDTO;
import com.userboard.js.service.BoardService;
import com.userboard.js.service.MemberService;



@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String LoginForm() {
		return "LoginForm";
	}
	
	@RequestMapping("LoginForm")
	public void LoginForm2() {
		
	}
	
	@RequestMapping("JoinForm")
	public void JoinForm() {
			
	}
	
	@RequestMapping("MemberJoinAction")
	public String MemberJoinAction(MemberDTO dto) {
		boolean r = memberService.memberInsert(dto);
		if(r) {
			System.out.println("회원가입성공");
			return "redirect:LoginForm";
		}else {
			
			System.out.println("회원가입실패");
			return "JoinForm";
		}
	}
	
	@RequestMapping(value = "MemberLoginAction", method = RequestMethod.POST)
	public String MemberLoginAction(MemberDTO dto, HttpSession session) {

		if(session.getAttribute("sessionID") != null) {
			session.removeAttribute("sessionID");
		}
		
		if(memberService.memberLogin(dto)) {
			session.setAttribute("sessionID",dto.getMEMBER_ID());
			System.out.println("로그인 성공");
			return "home";
		} else {
			System.out.println("로그인 실패");
			return "redirect:LoginForm";
		}
		
	}
	
	@RequestMapping("home")
	public String Main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		return "home";
	}
	
	@RequestMapping("MemberList")
	public String MemberList(Model model) {
		List<MemberDTO> list = memberService.memberList();
		model.addAttribute("list", list);
		
		return "MemberList";
	}
	
	@RequestMapping("MemberView")
	public String MemberView(Model model, String MEMBER_ID) {
		model.addAttribute("member", memberService.memberView(MEMBER_ID));
		
		return "MemberView";
	}
	
	@RequestMapping("MemberDelete")
	public String MemberDelete(Model model, String MEMBER_ID) {
		memberService.memberDelete(MEMBER_ID);
		
		return "redirect:MemberList";  // redirect == 새로운 URL로 요청이 다시 일어나도록 하는 것이다
	}
	
	@RequestMapping("BoardList")
	public String BoardList(Model model, HttpServletRequest request) {
		List<BoardDTO> boardList = boardService.boardList();
		model.addAttribute("boardlist", boardList);
		
		return "BoardList";
	}
	
	@RequestMapping("BoardWrite")
	public String BoardWrite() {
		
		return "BoardWrite";
	}
	
	@RequestMapping("BoardWriteAction")
	public String BoardWriteAction(BoardDTO dto) {
		boolean r = boardService.boardWrite(dto);
		if(r) {
			System.out.println("글쓰기 성공");
			return "redirect:BoardList";
		} else {
			
			System.out.println("글쓰기 실패");
			return "BoardWrite";
		}
	}
	
	/*
	@RequestMapping("SpringTest1")
	public String spring(Model model) {
		model.addAttribute("member", memberService.member());
		return "SpringTest1";
	}*/
	
}
