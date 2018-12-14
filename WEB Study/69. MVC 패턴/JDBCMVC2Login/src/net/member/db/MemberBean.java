package net.member.db;

public class MemberBean {
	private String MEMBER_ID;
	private String MEMBER_PW;
	private String MEMBER_EMAIL;
	private String MEMBER_NAME;
	private String MEMBER_JUMIN;
	private String MEMBER_ADRESS;
	private String MEMBER_MYM;
	
	public MemberBean() {
		
	}
	
	public MemberBean(String MEMBER_ID, String MEMBER_PW, String MEMBER_EMAIL, String MEMBER_NAME, 
			String MEMBER_JUMIN, String MEMBER_ADRESS, String MEMBER_MYM) {
		
		this.MEMBER_ID = MEMBER_ID;
		this.MEMBER_PW = MEMBER_PW;
		this.MEMBER_EMAIL = MEMBER_EMAIL;
		this.MEMBER_NAME = MEMBER_NAME;
		this.MEMBER_JUMIN = MEMBER_JUMIN;
		this.MEMBER_ADRESS = MEMBER_ADRESS;
		this.MEMBER_MYM = MEMBER_MYM;
		
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
	public String getMEMBER_JUMIN() {
		return MEMBER_JUMIN;
	}
	public void setMEMBER_JUMIN(String mEMBER_JUMIN) {
		MEMBER_JUMIN = mEMBER_JUMIN;
	}
	public String getMEMBER_ADRESS() {
		return MEMBER_ADRESS;
	}
	public void setMEMBER_ADRESS(String mEMBER_ADRESS) {
		MEMBER_ADRESS = mEMBER_ADRESS;
	}
	public String getMEMBER_MYM() {
		return MEMBER_MYM;
	}
	public void setMEMBER_MYM(String mEMBER_MYM) {
		MEMBER_MYM = mEMBER_MYM;
	}
	

}
