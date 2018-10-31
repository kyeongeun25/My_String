package com.biz.form01.dao;

import java.util.List;

import com.biz.form01.vo.MemberVO;

public interface MemberDAO {
	
	public void insert(MemberVO vo); // Create
	
	public List<MemberVO> selectAll();	// 전체 Read
	public MemberVO selectOne(int id);	// 개별 Read
	
	public void update(MemberVO vo) ;
	public void delete(int id) ;
}