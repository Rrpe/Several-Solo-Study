package com.userboard.js.service;

import java.util.List;

import com.userboard.js.dto.BoardDTO;

public interface BoardService {
	List<BoardDTO> boardList();
	Boolean boardWrite(BoardDTO dto);
}
