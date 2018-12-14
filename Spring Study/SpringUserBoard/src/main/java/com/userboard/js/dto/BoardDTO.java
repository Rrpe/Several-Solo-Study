package com.userboard.js.dto;

import java.sql.Date;

public class BoardDTO {

	private String BOARD_NAME;
	private String BOARD_PASS;
	private String BOARD_SUBJECT;
	private String BOARD_CONTENT;
	private Date BOARD_DATE;
	
	public BoardDTO() {}
	
	public BoardDTO(String BOARD_NAME, String BOARD_PASS, String BOARD_SUBJECT, String BOARD_CONTENT, Date BOARD_DATE) {
		this.BOARD_NAME = BOARD_NAME;
		this.BOARD_PASS = BOARD_PASS;
		this.BOARD_SUBJECT = BOARD_SUBJECT;
		this.BOARD_CONTENT = BOARD_CONTENT;
		this.BOARD_DATE = BOARD_DATE;
	}
	
	public String getBOARD_NAME() {
		return BOARD_NAME;
	}
	public void setBOARD_NAME(String bOARD_NAME) {
		BOARD_NAME = bOARD_NAME;
	}
	public String getBOARD_PASS() {
		return BOARD_PASS;
	}
	public void setBOARD_PASS(String bOARD_PASS) {
		BOARD_PASS = bOARD_PASS;
	}
	public String getBOARD_SUBJECT() {
		return BOARD_SUBJECT;
	}
	public void setBOARD_SUBJECT(String bOARD_SUBJECT) {
		BOARD_SUBJECT = bOARD_SUBJECT;
	}
	public String getBOARD_CONTENT() {
		return BOARD_CONTENT;
	}
	public void setBOARD_CONTENT(String bOARD_CONTENT) {
		BOARD_CONTENT = bOARD_CONTENT;
	}
	public Date getBOARD_DATE() {
		return BOARD_DATE;
	}
	public void setBOARD_DATE(Date bOARD_DATE) {
		BOARD_DATE = bOARD_DATE;
	}
	
	
}
