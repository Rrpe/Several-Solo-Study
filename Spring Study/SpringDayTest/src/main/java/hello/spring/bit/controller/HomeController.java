package hello.spring.bit.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hello.spring.bit.dto.DataDTO;
import hello.spring.bit.service.HomeService;

/**
 * Handles requests for the application home page.
 */
@Controller //어노테이션 디스패처서블릿에 시그널을 주는 역할
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	HomeService homeService;

	@RequestMapping(value = "/", method = RequestMethod.GET) // 디폴트 값
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		return "home";
		// home.jsp를  home 이름만 가져오게끔 리턴 
	}
	
	/*@RequestMapping("SpringTest1") // url 이름 매핑 정의
	public String spring(@RequestParam String data, Model model) { //  디폴트 : (@RequestParam String data, Model model) | String data는 home.jsp부분의 name 이름
		model.addAttribute("asdf", data);	// asdf는 다음 jsp에 값을 넘겨줄때 ${asdf}로 읽는다.
		return "SpringTest1"; // .jsp 이름 리턴반환
	}*/
	
	/*@RequestMapping("SpringTest1") // url 이름 매핑 정의
	public String spring(@ModelAttribute DataDTO dto, Model model) { // 디폴트 : (@ModelAttribute DataDTO dto, Model model)
		model.addAttribute("data1", dto.getData());	
		model.addAttribute("data2", dto.getData2());
		
		return "SpringTest1";
	}*/
	
	@RequestMapping("SpringTest1")
	public String spring(Model model) {
		model.addAttribute("info", homeService.info());
		return "SpringTest1";
	}
}
