<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include_action.jsp</title>
</head>
<body>
<h2>Include_action.jsp에서 footer.jsp 호출</h2>
<hr>
Include_action.jsp 에서 출력한 메세지 입니다.<br>

<jsp:include page="footer.jsp">
	<jsp:param value="test@test.com" name="email"/>
	<jsp:param value="000-0000-0000" name=""/>
</jsp:include>
</body>
</html>