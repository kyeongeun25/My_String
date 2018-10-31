package com.biz.spmemo01.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.biz.spmemo01.constval.LoginConst;
import com.biz.spmemo01.vo.MemberVO;

public class AutherInterCeptor extends HandlerInterceptorAdapter {
	
	Logger log = LoggerFactory.getLogger(this.getClass());

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		// req에서 session 정보를 추출
		HttpSession httpSession = request.getSession();
		
		// session 정보에서 LOGIN_INFO를 추출
		MemberVO vo = (MemberVO)httpSession.getAttribute("LOGIN_INFO");
		
		if(vo == null) {
			
			response.sendRedirect("login.member?msg=" + LoginConst.LOGIN_GO);
			
			return false;
		}
		
		return true;
//		return super.preHandle(request, response, handler);
	}

	
	
}
