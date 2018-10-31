package com.biz.form01.vo;

// VO : Value Object 
// DTO : Data Transfer Object
// DO : Data Object
public class MemberVO{
	
	private long id;
	private String username;
	private String addr;
	private String telno;
	private String email;
	
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTelno() {
		return telno;
	}
	public void setTelno(String telno) {
		this.telno = telno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + "username=" + username + ", addr=" + addr + ", telno=" + telno + ", email=" + email + "]";
	}
	
		
	
	
}