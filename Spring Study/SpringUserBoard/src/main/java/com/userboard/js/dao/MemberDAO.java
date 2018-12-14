package com.userboard.js.dao;

import java.util.List;

import com.userboard.js.dto.MemberDTO;

public interface MemberDAO {
	Boolean memberInsert(MemberDTO dto);
	String memberLogin(MemberDTO dto);
	List<MemberDTO> memberList();
	MemberDTO memberView(String MEMBER_ID);
	void memberDelete(String MEMBER_ID);
}
