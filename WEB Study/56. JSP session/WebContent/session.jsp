<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session.jsp</title>
</head>

<body>
<h2>session ����</h2>
<hr>
<%
	// session �� ���� ���� �� �����̳ʿ� ���¸� �����ϱ� ���� ������ ����
	// isNew() �޼��带 �̿��� ���ʼ��Ǽ����� Ȯ���ϰ� �ִ�.
	if(session.isNew()) {
		out.println("<script> alert('������ �����Ǿ� �ٽü����մϴ�.')</script>");
		session.setAttribute("login", "ȫ�浿");	//���� �Ӽ����� name�� �Ӽ��� �Ӽ������� value�� �Ҵ�

	}
%>

# <%= session.getAttribute("login") %><br>   
<!--  ���� �Ӽ����� name�� �Ӽ��� ���� Object Ÿ������ �����Ѵ�. �ش� �Ǵ� �Ӽ����� ���� ��쿡�� null ���� �����Ѵ�	-->

1. ���� ID : <%= session.getId() %><br>
<!-- ���ǿ� �Ҵ�� ���� �ĺ��ڸ� String Ÿ������ ���� -->

2. ���� �����ð� : <%= session.getMaxInactiveInterval() %><br>
<!-- ������ �����ϱ� ���� ���� �����ð��� �� ������ �����Ѵ�  -->

</body>
</html>