package com.biz.start03.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.biz.start03.vo.MemberVO;

@Controller
public class MemberController {
	
	@RequestMapping("insert.biz")
	public String MemberInsert(@ModelAttribute MemberVO vo, Model model) {
		
		model.addAttribute("MEMBER", vo);
		
		return "memberview";
	}

}
