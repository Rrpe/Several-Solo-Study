<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>application_result.jsp</title>
</head>

<body>

	<h2>application_result 예제</h2>
	<hr>
	
	
	<h2>
	<% int cnt = (int)application.getAttribute("count");  %> <!-- 가져온 getAttribute값을 int로 파싱 -->
	<%= cnt%>
	<% application.setAttribute("count", ++cnt);%> <!-- 새로가침 할떄마다 count 1식 증가 -->
	</h2>

</body>
</html>