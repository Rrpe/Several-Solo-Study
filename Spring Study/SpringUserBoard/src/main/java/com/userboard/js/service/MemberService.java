package com.userboard.js.service;

import java.util.List;

import com.userboard.js.dto.MemberDTO;

public interface MemberService {
	Boolean memberInsert(MemberDTO dto);
	Boolean memberLogin(MemberDTO dto);
	List<MemberDTO> memberList();
	MemberDTO memberView(String MEMBER_ID);
	void memberDelete(String MEMBER_ID);
}
