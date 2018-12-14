package hello.spring.bit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hello.spring.bit.dao.HomeDAO;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	HomeDAO dao;

	@Override
	public String info() {
		// TODO Auto-generated method stub
		System.out.println("인포메소드");
		return dao.info();
	}

}
