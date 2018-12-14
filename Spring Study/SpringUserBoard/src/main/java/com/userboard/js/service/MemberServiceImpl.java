package com.userboard.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.userboard.js.dao.MemberDAO;
import com.userboard.js.dto.MemberDTO;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberdao;

	@Override
	public Boolean memberInsert(MemberDTO dto) {
		// TODO Autod-generated method stub
		System.out.println("회원 추가 메소드");
	
		return memberdao.memberInsert(dto);
	}

	@Override
	public Boolean memberLogin(MemberDTO dto) {
		// TODO Auto-generated method stub
		System.out.println("로그인 메소드");
		
		String result = memberdao.memberLogin(dto);
		
		if(result != null) {
			System.out.println("데이터값 input 성공");
			return true;
		} else {
			System.out.println("데이터값 input 실패");
			return false;
		}
	}

	@Override
	public List<MemberDTO> memberList() {
		// TODO Auto-generated method stub
		System.out.println("회원 리스트 메소드");
		
		return memberdao.memberList();
	}

	@Override
	public MemberDTO memberView(String MEMBER_ID) {
		// TODO Auto-generated method stub
		System.out.println("회원 정보 상세보기 메소드");
		
		return memberdao.memberView(MEMBER_ID);
	}

	@Override
	public void memberDelete(String MEMBER_ID) {
		// TODO Auto-generated method stub
		System.out.println("회원 삭제 메소드");
		
		memberdao.memberDelete(MEMBER_ID);
	}

	

	/*@Override
	public String member() {
		// TODO Auto-generated method stub
		System.out.println("멤버메소드");
		return memberdao.member();
	}*/

	
}
