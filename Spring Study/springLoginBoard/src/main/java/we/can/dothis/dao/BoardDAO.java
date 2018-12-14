package we.can.dothis.dao;

import java.util.List;

import we.can.dothis.dto.BoardDTO;

public interface BoardDAO {

	public void boardwrite(BoardDTO dto);
	
	public List<BoardDTO> boardlist(BoardDTO dto);
	
	public BoardDTO boarddetail(String id);
	
	public void delete(String id);
	
	public void modify(BoardDTO dto);
}
