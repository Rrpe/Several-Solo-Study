package we.can.dothis.dao;

import java.util.List;

import we.can.dothis.dto.MemberDTO;

public interface LoginDAO {
	
	public String login(MemberDTO dto);
	
	public void Join(MemberDTO dto);
	
	public List<MemberDTO> memberlist(MemberDTO dto);
	
	public MemberDTO memberinfo(String id);
	
	public void delete(String id);
}
