package com.biz.spmemo01.controllers;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.spmemo01.constval.LoginConst;
import com.biz.spmemo01.dao.MemberDAO;
import com.biz.spmemo01.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("join.member")
	public String join(Model model) {
		
		model.addAttribute("BODY", "JOIN_FORM");
		
		return "home";
	}
	
	@RequestMapping("join_ok.member")
	public String join_ok(Model model, @ModelAttribute MemberVO vo) {
		
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		dao.insert(vo);
		
		return "redirect:home.memo";
		
	}
	
	@RequestMapping("login.member")
	public String login(Model model, @RequestParam String msg) {
		model.addAttribute("BODY", "LOGIN_FORM");
	
		if(msg.equals(LoginConst.LOGIN_GO)) {
			model.addAttribute("MSG", LoginConst.MSG_LOGIN_GO);
		}
		
		if(msg.equals(LoginConst.LOGIN_ID_NOT_FOUND)) {
			model.addAttribute("MSG", LoginConst.MSG_LOGIN_ID_NOT_FOUND);
		}
		
		if(msg.equals(LoginConst.LOGIN_FAIL)) {
			model.addAttribute("MSG", LoginConst.MSG_LOGIN_FAIL);
		}
		
		return "home";
	}
	
	@RequestMapping("login_ok.member")
	public String login_ok(Model model, @ModelAttribute MemberVO vo, HttpSession httpSession) {
		
		// 데이터베이스에서 회원정보를 조회
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		MemberVO retVo = dao.selectId(vo);
		
		if(retVo == null) {
			return "redirect:login.member?msg=" + LoginConst.LOGIN_ID_NOT_FOUND;
		}
		
		retVo = dao.loginCheck(vo);
		if(retVo == null) {
			return "redirect:login.member?msg=" + LoginConst.LOGIN_FAIL;
		}
		
		httpSession.setAttribute("LOGIN_INFO", retVo);
		
		return "redirect:home.memo";
		
	}
	
	@RequestMapping("logout.member")
	public String logout(HttpSession httpSession) {
		
		httpSession.removeAttribute("LOGIN_INFO");
		
		return "redirect:home.memo";
		
	}
	
}
