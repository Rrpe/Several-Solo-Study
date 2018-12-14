<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
   Connection conn = null;

   try{
      Context init = new InitialContext();   // 객체를 생성
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");   // 오라클 db 꺼를 불러오겠다.
      conn = ds.getConnection();
      
      out.println("<h3>연결되었습니다.</h3>");
   }catch(Exception e){
      out.println("<h3>연결에 실패하였습니다.</h3>");
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