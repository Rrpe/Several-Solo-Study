package hello.spring.bit.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDAOImpl implements HomeDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public String info() {
		// TODO Auto-generated method stub
		return "hello";
	}
										
}
