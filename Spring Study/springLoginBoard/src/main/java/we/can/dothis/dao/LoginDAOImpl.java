package we.can.dothis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import we.can.dothis.dto.MemberDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	SqlSession session;
	
	public String login(MemberDTO dto) {
		String result;
		result = session.selectOne("login.selectMember", dto);
		return result;
	}

	@Override
	public void Join(MemberDTO dto) {
		// TODO Auto-generated method stub
		session.insert("login.insertMember", dto);
	}

	@Override
	public List<MemberDTO> memberlist(MemberDTO dto) {
		return session.selectList("login.selectMemberList", dto);
	}

	@Override
	public MemberDTO memberinfo(String id) {
		return session.selectOne("login.selectMemberInfo", id);
	}

	@Override
	public void delete(String id) {
		session.delete("login.deleteMember", id);
	}

}
