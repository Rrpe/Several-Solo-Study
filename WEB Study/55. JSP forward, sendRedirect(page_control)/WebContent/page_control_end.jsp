<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>forward action �� sendRedirect() ���</h2>
<hr>
���� ���̴� ȭ���� page_control_end.jsp���� ����� ��� �Դϴ�.
<hr>
�̸� : <%= request.getParameter("username") %><br>
��ȭ��ȣ :<%= request.getParameter("tel") %>
</center>
</body>
</html>