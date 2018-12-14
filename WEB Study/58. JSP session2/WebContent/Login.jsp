<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>login.jsp</title>
</head>
 <%
        session.invalidate();//종료 코드
 %>
<body>
<center>

<h2>장바구니 만들기</h2>
<hr>
<form method="post" action="setProduct.jsp">
		<input type="text" name="userid">
		<br>
		<input type="submit" value="로그인" style="margin-top: 5px;">
</form>
	
</center>
</body>
</html>