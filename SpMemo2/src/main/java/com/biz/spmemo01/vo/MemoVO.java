package com.biz.spmemo01.vo;

public class MemoVO {
	
	private long id;
	private String memoCat;
	private String flag;
	private String date;
	private String subject;
	private String memoText;
	
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
	
	@Override
	public String toString() {
		return "MemoVO [id=" + id + ", memoCat=" + memoCat + ", flag=" + flag + ", date=" + date + ", subject="
				+ subject + ", memoText=" + memoText + "]";
	}

	
}