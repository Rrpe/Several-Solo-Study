package we.can.dothis.service;

import java.util.List;

import we.can.dothis.dto.MemberDTO;

public interface LoginService {
	
	public void Join(MemberDTO dto);
	
	public Boolean Login(MemberDTO dto);
	
	public List<MemberDTO> list(MemberDTO dto);
	
	public MemberDTO info(String id);
	
	public void delete(String id);
}
