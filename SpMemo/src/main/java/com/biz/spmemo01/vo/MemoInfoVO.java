package com.biz.spmemo01.vo;

public class MemoInfoVO {
	
	private long id;
	private String memoCat;
	private String flag;
	private String date;
	private String subject;
	private String memoText;
	
	private String cValue;
	private String fValue;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getMemoCat() {
		return memoCat;
	}
	public void setMemoCat(String memoCat) {
		this.memoCat = memoCat;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMemoText() {
		return memoText;
	}
	public void setMemoText(String memoText) {
		this.memoText = memoText;
	}
	public String getcValue() {
		return cValue;
	}
	public void setcValue(String cValue) {
		this.cValue = cValue;
	}
	public String getfValue() {
		return fValue;
	}
	public void setfValue(String fValue) {
		this.fValue = fValue;
	}
	
}
