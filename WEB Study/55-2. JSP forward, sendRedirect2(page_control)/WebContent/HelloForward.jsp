<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<%	request.setCharacterEncoding("EUC-KR");	%>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->

<title>HelloForward.jsp</title>
</head>

<body>
<center>
<h2>forward action �� sendRedirect() ���</h2>
<hr>
���� ���̴� ȭ���� HelloForward ���� ����� ��� �Դϴ�.
<hr>
�̸� : <%= request.getParameter("username") %><br>	<!-- request.getParameter(name) name�̸��� ��û�� -->
��ȭ��ȣ :<%= request.getParameter("tel") %>

</center>
</body>
</html>