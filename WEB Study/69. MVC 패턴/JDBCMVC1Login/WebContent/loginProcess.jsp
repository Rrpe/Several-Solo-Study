<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="DAO.Dao" %>


<%
	Dao dao = new Dao();
	session.setAttribute("idSession", request.getParameter("uid"));
	String id = request.getParameter("uid");
	String pw = request.getParameter("upw");
	
	if(dao.login(id, pw)== true){
		response.sendRedirect("Main.jsp");
	}else{
		response.sendRedirect("loginForm.jsp");
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>