package com.userboard.js.dto;

public class MemberDTO {
	
	private String MEMBER_ID;
	private String MEMBER_PW;
	private String MEMBER_NAME;
	private String MEMBER_AGE;
	private String MEMBER_PHONE;
	private String MEMBER_EMAIL;
	
	public MemberDTO() {}
	
	public MemberDTO(String MEMBER_ID, String MEMBER_PW, String MEMBER_NAME, String MEMBER_AGE, String MEMBER_PHONE, String MEMBER_EMAIL) {
		this.MEMBER_ID = MEMBER_ID;
		this.MEMBER_PW = MEMBER_PW;
		this.MEMBER_NAME = MEMBER_NAME;
		this.MEMBER_AGE = MEMBER_AGE;
		this.MEMBER_PHONE = MEMBER_PHONE;
		this.MEMBER_EMAIL = MEMBER_EMAIL;
	}
	
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	
	public String getMEMBER_PW() {
		return MEMBER_PW;
	}
	public void setMEMBER_PW(String mEMBER_PW) {
		MEMBER_PW = mEMBER_PW;
	}
	
	public String getMEMBER_EMAIL() {
		return MEMBER_EMAIL;
	}
	public void setMEMBER_EMAIL(String mEMBER_EMAIL) {
		MEMBER_EMAIL = mEMBER_EMAIL;
	}
	
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}
	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}
	
	public String getMEMBER_AGE() {
		return MEMBER_AGE;
	}
	public void setMEMBER_AGE(String mEMBER_AGE) {
		MEMBER_AGE = mEMBER_AGE;
	}
	
	public String getMEMBER_PHONE() {
		return MEMBER_PHONE;
	}
	public void setMEMBER_PHONE(String mEMBER_PHONE) {
		MEMBER_PHONE = mEMBER_PHONE;
	}
	
}
