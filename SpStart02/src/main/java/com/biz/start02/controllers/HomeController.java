package com.biz.start02.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.start02.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("myname.do")
	public String myName(Model model) {			// model : 프로젝트 전역변수
		
		model.addAttribute("MYNAME", "이몽룡");
		model.addAttribute("MY_ADDR", "광주광역시");
		
		
		return "myname";
		
	}
	
	@RequestMapping("myinfo.do")
	public String myinfo(Model model) {
		
		// spring에서 new 키워드로 생성하는 클래스들을 POJO라 한다.
		MemberVO vo = new MemberVO();
		
		vo.setName("성춘향");
		vo.setAddr("남원시");
		vo.setAge(16);
		
		model.addAttribute("MYINFO", vo);
		
		return "myinfo";
			
	}
	
	@RequestMapping("my.action")
	public String myaction(Model model) {
		return "action";
	}
	
}
