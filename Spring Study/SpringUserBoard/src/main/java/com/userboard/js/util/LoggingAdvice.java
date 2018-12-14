package com.userboard.js.util;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAdvice {
	
	// �����ڰ� ������ ���� �����Ҽ� ����.
	@Pointcut("execution(* com.userboard.js.service.MemberServiceImpl.member(..))") // ..�� �̸���member�� �Ķ���� ���� ���� ���͵� ������� �� ������ ����ְڴ�.
	public void logging() {}
	
	@Before("logging()")
	public void before() {
		System.out.println("�޼��尡 ����Ǳ� ��");
	}
	
	@After("logging()")
	public void after() {
		System.out.println("�޼��尡 ����� ��");
	}
}
                                                                                                                 
