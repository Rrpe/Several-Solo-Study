<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
<%

 	Connection conn = null;
	ResultSet rs = null;
	String sql = "DELETE FROM STUDENT WHERE ID=?";
   
   try {
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
      conn = ds.getConnection();
      
      PreparedStatement stmt = conn.prepareStatement(sql);
      stmt.setString(1, request.getParameter("id"));
      
   	  stmt.executeUpdate();
   	  response.sendRedirect("Member_list.jsp");
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

</body>
</html>