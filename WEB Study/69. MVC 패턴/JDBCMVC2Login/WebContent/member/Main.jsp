<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
�α��� �Ϸ�!!
<br>
<%
	String id = (String) session.getAttribute("login");
	if(id.equals("admin")){
%>
	<a href="MemberList.me">��� ����Ʈ</a>
	<!-- 
	<form action="/MemberList.me" method="post">
	<input type=submit value="�������Ʈ">	</form> -->
<%
	}
%>
<br>
<input type="button" onclick="location.href='SignIn.jsp'" value="�α׾ƿ�"/>
</body>
</html>