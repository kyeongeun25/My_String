package com.biz.form01.controllers;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.form01.dao.MemberDAO;
import com.biz.form01.vo.MemberVO;

@Controller
public class CRUD_Controller{
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("insert_form.do")
	public String insert_home(Model model){
		return "insert_form";
	}
	
	@RequestMapping("insert_ok.do")
	public String insert_ok(@ModelAttribute MemberVO vo, Model model) {
		
		// mybatis구조 
		// MemberDAO에 있는 method들을 사용 할 수 있게 만들어준다. 자동으로
		// DAO에서 insert method를 자동으로 호출해서 사용
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		// 수정과 등록 구분
		if(vo.getId() > 0) {
			dao.update(vo);
		}else {
			dao.insert(vo);
		}
		
		model.addAttribute("MEMBER", vo);
		return "redirect:view_list.do";
	}
	
	// return 문자열에 redirect: 이 선행하면
	// view를 보이라는 것이 아니고 페이지를 req를 view_list.do로 넘겨라
	
	
	@RequestMapping("view_list.do")
	public String viewList(Model model) {
		
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		List<MemberVO> memberList = dao.selectAll();
		
		model.addAttribute("MEMBERS", memberList);
		return "view_list";
		
	}
	
	// @ModelAttribute 클래스를 받을때,
	// @RequestParam data를 개별적으로 받을 때
	
	@RequestMapping("update.do")
	public String update(@RequestParam int id, Model model) {
		
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		MemberVO vo = dao.selectOne(id);
		
		model.addAttribute("MEMBER", vo);
		return "insert_form";
	}
	
	@RequestMapping("delete.do")
	public String delete(@RequestParam int id) {
		
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		dao.delete(id);
		return "redirect:view_list.do";
		
	}
}