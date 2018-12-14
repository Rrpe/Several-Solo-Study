<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter로 value값을 받아올때 한국어가 안깨지게 해줌 -->
<%

 	Connection conn = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM STUDENT WHERE ID=?";
   
   try {
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
      conn = ds.getConnection();
      
      PreparedStatement stmt = conn.prepareStatement(sql);
      stmt.setString(1, request.getParameter("id"));
      rs = stmt.executeQuery();
     
   } catch (Exception e) {
      out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
      e.printStackTrace();      
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center" style="margin-top: 300px;">
	<table border="1">
<%
	while(rs.next()){
%>
	<tr>
	<td>ID</td>
	<td><%=rs.getString("ID") %></td>
	</tr>
	<tr>
	<td>PASS</td>
	<td><%=rs.getString("PASS") %></td>
	</tr>
	<tr>
	<td>MAIL</td>
	<td><%=rs.getString("MAIL") %></td>
	</tr>
	<tr>
	<td>NAME</td>
	<td><%=rs.getString("NAME") %></td>
	</tr>
	<tr>
	<td>ADRESS</td>
	<td><%=rs.getString("JUMIN") %></td>
	</tr>
	<tr>
	<td>JUMIN</td>
	<td><%=rs.getString("ADRESS") %></td>
	</tr>
	<tr>
	<td>BIRTH</td>
	<td><%=rs.getString("MYM") %></td>
	</tr>
<%
	}
%>
	</table>
	<br>
	<input type="button" onclick="location.href='SignIn.jsp'" value="로그아웃"/>
</div>
</body>
</html>