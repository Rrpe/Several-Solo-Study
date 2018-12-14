package we.can.dothis.service;

import java.util.List;

import we.can.dothis.dto.BoardDTO;
import we.can.dothis.dto.MemberDTO;

public interface BoardService {
	
	public void write(BoardDTO dto);
	
	public List<BoardDTO> list(BoardDTO dto);
	
	public BoardDTO detail(String id);
	
	public void delete(String id);
	
	public void modify(BoardDTO dto);
}
