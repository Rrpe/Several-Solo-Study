<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("idSession");

		if (id == null) {
			System.out.println("���ǰ� ����");
	%>
	<a href="loginForm.jsp">�α������̼�</a>
	<%
		} else {
			System.out.println("���ǰ� ����");
			if (id.equals("admin")) {
	%>
	�ȳ��ϼ���.�����ڴ�
	<a href="Member_list.jsp">����Ʈ</a>
	<%
		} else {
	%>
	�ȳ��ϼ���.
	<%
		}
		}
	%>

</body>
</html>