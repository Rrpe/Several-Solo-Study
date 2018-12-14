package com.userboard.js.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.userboard.js.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	SqlSession session;
	
	@Override
	public List<BoardDTO> boardList() {
		// TODO Auto-generated method stub
		
		return session.selectList("member.boardList");
	}

	@Override
	public Boolean boardWrite(BoardDTO dto) {
		// TODO Auto-generated method stub
		int result = session.insert("member.boardWrite", dto);
		if(result > 0) {
			return true;
		} else 
			return false;
	}

}
