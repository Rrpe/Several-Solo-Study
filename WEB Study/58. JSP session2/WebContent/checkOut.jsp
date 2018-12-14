<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	request.setCharacterEncoding("UTF-8");	%>
<html>
<head>
<meta charset="EUC-KR">
<title>checkOut.jsp</title>
</head>

<body>
<center>
	<h2>구입 확인</h2>
	<hr>

	<%
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("productList");
		String name = (String) session.getAttribute("NAME") + "님이 구입한 상품";
	%>

	<%= name %>
	<h3>구입 목록</h3>
	<hr>
	<!--  porductList에 값이 없다면 업다는 말이 나오고 있다면 porductList 의 값을 보여주라 -->
	<%
		if (session.getAttribute("productList") == null)
//			out.println(session.getAttribute("NAME") + " 선택한 상품이 없습니다.");		//Login.jsp에서 이름 부분
			out.println("선택한 상품이 없습니다.");
		else
//			for(Object productName: list) {		
			out.println(session.getAttribute("productList"));	//add.jsp에서 상품의 세션  
//		}	
	%>
	<hr>
	<!-- 세션을 삭제 할수있는 코드가 있는데로 넘어 가는 코드 -->
	<!-- 이 코드를 만든이유 -->
	<form action="Login.jsp">
		<input type="submit" value="로그아웃" name="logout">
	</form>
		<input type="button" value="뒤로가기" onclick="history.back()" style="margin-top: 5px;">
</center>
</body>
</html>