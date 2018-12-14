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
		System.out.println("ȸ�� �߰� �޼ҵ�");
	
		return memberdao.memberInsert(dto);
	}

	@Override
	public Boolean memberLogin(MemberDTO dto) {
		// TODO Auto-generated method stub
		System.out.println("�α��� �޼ҵ�");
		
		String result = memberdao.memberLogin(dto);
		
		if(result != null) {
			System.out.println("�����Ͱ� input ����");
			return true;
		} else {
			System.out.println("�����Ͱ� input ����");
			return false;
		}
	}

	@Override
	public List<MemberDTO> memberList() {
		// TODO Auto-generated method stub
		System.out.println("ȸ�� ����Ʈ �޼ҵ�");
		
		return memberdao.memberList();
	}

	@Override
	public MemberDTO memberView(String MEMBER_ID) {
		// TODO Auto-generated method stub
		System.out.println("ȸ�� ���� �󼼺��� �޼ҵ�");
		
		return memberdao.memberView(MEMBER_ID);
	}

	@Override
	public void memberDelete(String MEMBER_ID) {
		// TODO Auto-generated method stub
		System.out.println("ȸ�� ���� �޼ҵ�");
		
		memberdao.memberDelete(MEMBER_ID);
	}

	

	/*@Override
	public String member() {
		// TODO Auto-generated method stub
		System.out.println("����޼ҵ�");
		return memberdao.member();
	}*/

	
}
