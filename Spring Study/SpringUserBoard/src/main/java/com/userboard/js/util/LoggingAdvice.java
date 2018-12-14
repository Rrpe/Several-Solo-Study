package com.userboard.js.util;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAdvice {
	
	// 개발자가 시작할 곳을 지정할수 있음.
	@Pointcut("execution(* com.userboard.js.service.MemberServiceImpl.member(..))") // ..은 이름이member에 파라미터 값이 뭐든 들어와도 상관없이 그 지점을 잡아주겠다.
	public void logging() {}
	
	@Before("logging()")
	public void before() {
		System.out.println("메서드가 실행되기 전");
	}
	
	@After("logging()")
	public void after() {
		System.out.println("메서드가 실행된 후");
	}
}
                                                                                                                 
