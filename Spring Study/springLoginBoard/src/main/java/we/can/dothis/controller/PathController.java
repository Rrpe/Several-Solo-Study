package we.can.dothis.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import we.can.dothis.dto.MemberDTO;

@Controller
public class PathController {
	
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			return "login/loginForm";
		}
		
		@RequestMapping("JoinForm")
		public String Join() {
			return "login/joinForm";
		}
		
		@RequestMapping("BoardWriteForm")
		public String BoardWrite() {
			return "board/boardwrite";
		}
		

}
