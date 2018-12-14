<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	request.setCharacterEncoding("EUC-KR");	%>
<html>
<head>
<meta charset="EUC-KR">
<title>template.jsp</title>
</head>
<%

	String main = request.getParameter("main");
	
	if(main == null) {
		main = "";
	}
%>
<body>
<center>
<form method="get">
<table border="1" cellpadding="5" cellspacing="1" width="500" height="150">
	<tr>
		<td	colspan="2" align="left" height="30">
			<%@include file="top.jsp" %>
		</td>
	</tr>
	
	<tr>
		<td width="100" align="center">
			<jsp:include page="left.jsp"></jsp:include>	
		</td>
		<td width="400" align="center">
			<jsp:include page='<%= main %>'></jsp:include>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center" height="30"><font size="-1">
			<%@include file="bottom.jsp" %>
		</font></td>
	</tr>
</table>
</form>
</center>
</body>
</html>