package com.userboard.js.dao;

import java.util.List;

import com.userboard.js.dto.BoardDTO;

public interface BoardDAO {
	List<BoardDTO> boardList();
	Boolean boardWrite(BoardDTO dto);
}
