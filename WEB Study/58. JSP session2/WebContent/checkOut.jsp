<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	request.setCharacterEncoding("UTF-8");	%>
<html>
<head>
<meta charset="EUC-KR">
<title>checkOut.jsp</title>
</head>

<body>
<center>
	<h2>���� Ȯ��</h2>
	<hr>

	<%
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("productList");
		String name = (String) session.getAttribute("NAME") + "���� ������ ��ǰ";
	%>

	<%= name %>
	<h3>���� ���</h3>
	<hr>
	<!--  porductList�� ���� ���ٸ� ���ٴ� ���� ������ �ִٸ� porductList �� ���� �����ֶ� -->
	<%
		if (session.getAttribute("productList") == null)
//			out.println(session.getAttribute("NAME") + " ������ ��ǰ�� �����ϴ�.");		//Login.jsp���� �̸� �κ�
			out.println("������ ��ǰ�� �����ϴ�.");
		else
//			for(Object productName: list) {		
			out.println(session.getAttribute("productList"));	//add.jsp���� ��ǰ�� ����  
//		}	
	%>
	<hr>
	<!-- ������ ���� �Ҽ��ִ� �ڵ尡 �ִµ��� �Ѿ� ���� �ڵ� -->
	<!-- �� �ڵ带 �������� -->
	<form action="Login.jsp">
		<input type="submit" value="�α׾ƿ�" name="logout">
	</form>
		<input type="button" value="�ڷΰ���" onclick="history.back()" style="margin-top: 5px;">
</center>
</body>
</html>