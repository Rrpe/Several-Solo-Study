package we.can.dothis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import we.can.dothis.dto.BoardDTO;

@Repository
public class BoardDAOimpl implements BoardDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public void boardwrite(BoardDTO dto) {
		session.insert("board.insertBoard",dto);
	}

	@Override
	public List<BoardDTO> boardlist(BoardDTO dto) {
		return session.selectList("board.selectBoardList", dto);
	}

	@Override
	public BoardDTO boarddetail(String id) {
		return session.selectOne("board.selectBoardDetail", id);
	}

	@Override
	public void delete(String id) {
		session.delete("board.deleteBoard", id);
	}

	@Override
	public void modify(BoardDTO dto) {
		session.update("board.modifyBoard", dto);
	}

}