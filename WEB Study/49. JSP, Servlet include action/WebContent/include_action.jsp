<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include_action.jsp</title>
</head>
<body>
<h2>Include_action.jsp���� footer.jsp ȣ��</h2>
<hr>
Include_action.jsp ���� ����� �޼��� �Դϴ�.<br>

<jsp:include page="footer.jsp">
	<jsp:param value="test@test.com" name="email"/>
	<jsp:param value="000-0000-0000" name=""/>
</jsp:include>
</body>
</html>