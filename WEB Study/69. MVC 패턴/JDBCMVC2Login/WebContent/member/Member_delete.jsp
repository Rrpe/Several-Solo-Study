<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter로 value값을 받아올때 한국어가 안깨지게 해줌 -->
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

</body>
</html>