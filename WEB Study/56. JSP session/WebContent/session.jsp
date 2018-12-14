<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session.jsp</title>
</head>

<body>
<h2>session 예제</h2>
<hr>
<%
	// session 웹 서버 쪽의 웹 컨테이너에 상태를 유지하기 위한 정보를 저장
	// isNew() 메서드를 이용해 최초세션설정을 확인하고 있다.
	if(session.isNew()) {
		out.println("<script> alert('세션이 해제되어 다시설정합니다.')</script>");
		session.setAttribute("login", "홍길동");	//세션 속성명이 name인 속성에 속성값으로 value를 할당

	}
%>

# <%= session.getAttribute("login") %><br>   
<!--  세션 속성명이 name인 속성의 값을 Object 타입으로 리턴한다. 해당 되는 속성명이 없을 경우에는 null 값을 리턴한다	-->

1. 세션 ID : <%= session.getId() %><br>
<!-- 세션에 할당된 고유 식별자를 String 타입으로 리턴 -->

2. 세션 유지시간 : <%= session.getMaxInactiveInterval() %><br>
<!-- 세션을 유지하기 위한 세션 유지시간을 초 단위로 설정한다  -->

</body>
</html>