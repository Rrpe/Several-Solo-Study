<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="org.springframework.web.servlet.mvc.method.annotation.SessionAttributeMethodArgumentResolver"%>
<%@page
	import="org.springframework.web.bind.annotation.SessionAttribute"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Home</title>
</head>
<body>
<center>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>

	<%
		String sessionID = (String) session.getAttribute("sessionID");
		
		System.out.println(sessionID + " 입장");

		if (sessionID == null) {
			System.out.println("세션값 없음");
	%>
	
	<a href="JoinForm">ERROR ! WARNING!</a>
	<br>
	
	<%
		} else {
			System.out.println("세션값 있음");
	%>
	
	<%= sessionID%>님 안녕하세요.
	<br>
	<a href="BoardList">BoardList</a>
	<br>
		<%
			if (sessionID.equals("admin")) {
		%>
	안녕하세요.관리자님
	<a href="MemberList">MemberList</a>
	
		<%
			} else {
				
			}
		}
	%>
</center>
</body>
</html>
