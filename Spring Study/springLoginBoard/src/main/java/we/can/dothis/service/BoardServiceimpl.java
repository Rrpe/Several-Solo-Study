package we.can.dothis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import we.can.dothis.dao.BoardDAO;
import we.can.dothis.dto.BoardDTO;

@Service
public class BoardServiceimpl implements BoardService {

	@Autowired
	BoardDAO boarddao;
	
	@Override
	public void write(BoardDTO dto) {
		boarddao.boardwrite(dto);
	}

	@Override
	public List<BoardDTO> list(BoardDTO dto) {
		return boarddao.boardlist(dto);
	}

	@Override
	public BoardDTO detail(String id) {
		return boarddao.boarddetail(id);
	}

	@Override
	public void delete(String id) {
		boarddao.delete(id);
	}

	@Override
	public void modify(BoardDTO dto) {
		boarddao.modify(dto);
	}



}
