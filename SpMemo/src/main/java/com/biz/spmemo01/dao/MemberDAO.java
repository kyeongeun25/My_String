package com.biz.spmemo01.dao;

import com.biz.spmemo01.vo.MemberVO;

public interface MemberDAO {

	public void insert(MemberVO vo);
	public MemberVO selectId(MemberVO vo);
	public MemberVO loginCheck(MemberVO vo);
	public MemberVO selectMyInfo(int id);
	
}
