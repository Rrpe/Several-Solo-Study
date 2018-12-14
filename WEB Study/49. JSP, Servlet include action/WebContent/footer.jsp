<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>footer.jsp</title>
</head>
<body>
<h2>footer.jsp에서 footer.jsp 호출</h2>
<hr>
footer.jsp 에서 출력한 메세지 입니다.<br>
<%= request.getParameter("email") %>
<%= request.getParameter("tel") %>
</body>
</html>