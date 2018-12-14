package com.userboard.js.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.userboard.js.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	SqlSession session;

	@Override
	public Boolean memberInsert(MemberDTO dto) {
		// TODO Auto-generated method stub
		int result = session.insert("member.memberInsert",dto);
		if(result > 0) {
			return true;
		} else 
			return false;
		
	}

	@Override
	public String memberLogin(MemberDTO dto) {
		// TODO Auto-generated method stub
		String result = session.selectOne("member.memberLogin", dto);
	
		return result;
	}

	@Override
	public List<MemberDTO> memberList() {
		// TODO Auto-generated method stub
		return session.selectList("member.memberList");
	}

	@Override
	public MemberDTO memberView(String MEMBER_ID) {
		// TODO Auto-generated method stub
		
		return session.selectOne("member.memberView", MEMBER_ID);
	}

	@Override
	public void memberDelete(String MEMBER_ID) {
		// TODO Auto-generated method stub
		session.delete("member.memberDelete", MEMBER_ID);
	}
	
	/*@Override
	public String member() {
		// TODO Auto-generated method stub
		String name = "하나";
		String result = session.selectOne("info.selectGrade", name); // selectOne(mapper의 select id, String 이름)
		
		return result;
	}
		*/

}
