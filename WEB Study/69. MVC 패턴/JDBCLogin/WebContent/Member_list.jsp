<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
<%

 	Connection conn = null;
	ResultSet rs = null;
	String sql = "SELECT ID FROM STUDENT";
   
   try {
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
      conn = ds.getConnection();
      
      PreparedStatement stmt = conn.prepareStatement(sql);
      
      rs = stmt.executeQuery();
     
   } catch (Exception e) {
      out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
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
	System.out.println("�Ȥ���");
%>
	<tr>
	<td>�����</td>
	<td><a href="Member_info.jsp?id=<%=rs.getString("ID")%>"><%=rs.getString("ID") %></a></td>
	<td><a href="Member_delete.jsp?id=<%=rs.getString("ID")%>">����</a></td>
	</tr>
<%
	}
%>
	</table>
	<br>
	<input type="button" onclick="location.href='SignIn.jsp'" value="�α׾ƿ�"/>
</div>
</body>
</html>