<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("idSession");
		System.out.println(id+" 입장");

		if (id == null) {
			System.out.println("세션값 없음");
	%>
	<a href="JoinForm">로그인하이소</a><br>
	<%
		} else {
			System.out.println("세션값 있음");
	%>
			<a href="BoardList">게시판 글싸지르기</a>
	<%
			if (id.equals("admin")) {
	%>
	안녕하세요.관리자님
	<a href="Memberlist">리스트</a>
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