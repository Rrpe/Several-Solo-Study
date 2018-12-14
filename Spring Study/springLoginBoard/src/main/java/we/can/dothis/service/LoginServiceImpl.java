package we.can.dothis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import we.can.dothis.dao.LoginDAO;
import we.can.dothis.dto.MemberDTO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAO loginDao;

	@Override
	public void Join(MemberDTO dto) {
		loginDao.Join(dto);
	}

	@Override
	public Boolean Login(MemberDTO dto) {
		String temp = loginDao.login(dto);
		
		if (temp != null)
			return true;
		else
			return false;
	}

	@Override
	public List<MemberDTO> list(MemberDTO dto) {
		return loginDao.memberlist(dto);
	}

	@Override
	public MemberDTO info(String id) {
		return loginDao.memberinfo(id);
	}

	@Override
	public void delete(String id) {
		loginDao.delete(id);
	}

}
