<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
<%

 	Connection conn = null;
	ResultSet rs = null;
	String sql = "SELECT ID FROM STUDENT WHERE ID=? AND PASS=?";
   
   String id = request.getParameter("uid");
   String pass = request.getParameter("upw");
  
   System.out.println(id);
   System.out.println(pass);
   
   try {
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
      conn = ds.getConnection();
      
      PreparedStatement stmt = conn.prepareStatement(sql);
      
      stmt.setString(1, id);
      stmt.setString(2, pass);
      
      rs = stmt.executeQuery();
      
      if (rs.next()) {
    	  session.setAttribute("login", id);
    	  response.sendRedirect("Main.jsp");
      } else {
    	  response.sendRedirect("SignIn.jsp");
      }
     
   } catch (Exception e) {
      out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
      e.printStackTrace();      
   } finally{
	   conn.close();
	   rs.close();
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