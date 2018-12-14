package com.userboard.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.userboard.js.dao.BoardDAO;
import com.userboard.js.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boarddao;
	
	@Override
	public List<BoardDTO> boardList() {
		// TODO Auto-generated method stub
		System.out.println("게시판 리스트 메소드");
		
		return boarddao.boardList();
	}

	@Override
	public Boolean boardWrite(BoardDTO dto) {
		// TODO Auto-generated method stub
		System.out.println("게시판 글쓰기 메소드");
		
		return boarddao.boardWrite(dto);
	}

}
