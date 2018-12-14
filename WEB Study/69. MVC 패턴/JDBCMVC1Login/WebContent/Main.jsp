<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("idSession");

		if (id == null) {
			System.out.println("세션값 없음");
	%>
	<a href="loginForm.jsp">로그인하이소</a>
	<%
		} else {
			System.out.println("세션값 있음");
			if (id.equals("admin")) {
	%>
	안녕하세요.관리자님
	<a href="Member_list.jsp">리스트</a>
	<%
		} else {
	%>
	안녕하세요.
	<%
		}
		}
	%>

</body>
</html>