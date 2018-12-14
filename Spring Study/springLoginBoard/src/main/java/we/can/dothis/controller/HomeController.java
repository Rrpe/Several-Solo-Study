package we.can.dothis.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import we.can.dothis.dao.BoardDAO;
import we.can.dothis.dto.BoardDTO;
import we.can.dothis.dto.MemberDTO;
import we.can.dothis.service.BoardService;
import we.can.dothis.service.LoginService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	LoginService loginService;
	@Autowired
	BoardService boardservice;

	@RequestMapping("Join")
	public String Joinin(MemberDTO dto) {
		loginService.Join(dto);

		return "login/loginForm";
	}

	@RequestMapping("login")
	public String Login(MemberDTO dto, HttpSession session) {

		if ( session.getAttribute("idSession") != null ){
            // 기존에 login이란 세션 값이 존재한다면
            session.removeAttribute("idSession"); // 기존값을 제거해 준다.
        }
		
		if (loginService.Login(dto)) {
			 session.setAttribute("idSession", dto.getId());
			return "login/Main";
		} else {
			return "login/loginForm";
		}
	}
	
	@RequestMapping("Memberlist")
	public String Memberlist(MemberDTO dto, Model model) {
		List<MemberDTO> list = loginService.list(dto);
		model.addAttribute("list", list);
		
		return "login/Member_list";
	}
	
	@RequestMapping("Member_info.lo")
	public String Member_info(@RequestParam("uid") String id, Model model) {
		MemberDTO info_list = loginService.info(id);
		model.addAttribute("info_list", info_list);
		
		return "login/Member_info";
	}
	
	@RequestMapping("Membe_delete.lo")
	public String Membe_delete(@RequestParam("uid") String id, Model model) {
		loginService.delete(id);
		
		return "redirect:Memberlist";
	}
	
	@RequestMapping("BoardList")
	public String BoardList(BoardDTO dto, Model model) {
		List<BoardDTO> list = boardservice.list(dto);
		model.addAttribute("list", list);
		
		return "board/boardlist";
	}
	
	@RequestMapping(value="BoardWriteAction", method=RequestMethod.POST)
	public String BoardWriteAction(BoardDTO dto) {
		boardservice.write(dto);
		
		return "redirect:BoardList";
	}
	
	@RequestMapping("BoardDetailAction.bo")
	public String BoardDetailAction(@RequestParam("BID") String id, Model model) {
		BoardDTO dto = boardservice.detail(id);
		model.addAttribute("board_detail", dto);
		
		return "board/boarddetail";
	}
	
	@RequestMapping("BoardDelete.bo")
	public String BoardDelete(@RequestParam("BID") String id, Model model) {
		boardservice.delete(id);
		
		return "redirect:BoardList";
	}
	
	@RequestMapping("BoardModifyForm.bo")
	public String BoardModifyForm(@RequestParam("BID") String id, Model model) {
		BoardDTO dto = boardservice.detail(id);
		model.addAttribute("board_detail", dto);
		
		return "board/boardmodifyform";
	}
	
	@RequestMapping("BoardModifyAction")
	public String BoardModify(Model model, BoardDTO dto) {
		boardservice.modify(dto);
		
		return "redirect:BoardList";
	}
	
}
