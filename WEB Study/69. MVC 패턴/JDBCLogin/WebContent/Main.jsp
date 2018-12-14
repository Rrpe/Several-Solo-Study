<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter로 value값을 받아올때 한국어가 안깨지게 해줌 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
로그인 완료!!
<br>
<%
	String id = (String) session.getAttribute("login");
	if(id.equals("admin")){
%>
	<a href="Member_list.jsp">멤버 리스트</a>
<%
	}
%>
<br>
<input type="button" onclick="location.href='SignIn.jsp'" value="로그아웃"/>
</body>
</html>