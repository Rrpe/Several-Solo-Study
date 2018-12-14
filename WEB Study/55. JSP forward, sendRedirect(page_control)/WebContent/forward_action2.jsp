<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>forward_action2</title>
</head>
<body>
<h2>forward_action2 입니다.</h2>
<hr>
<jsp:forward page="page_control_end.jsp">
	<jsp:param value="000-0000-0000" name="tel"/>
</jsp:forward>
</body>
</html>