<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
   Connection conn=null;
   
   String driver="oracle.jdbc.driver.OracleDriver";
   String url="jdbc:oracle:thin:@localhost:1521:ORCL";
   
   Boolean connect=false;
   
   try{
      Class.forName(driver);  // 1.드라이브 로드 
      conn=DriverManager.getConnection(url,"hr","Password");  // 2. Connection 생성
      
      connect=true;
      
      conn.close();
   }catch(Exception e){
      connect=false;
      e.printStackTrace();
   }
%>
<html>
<head>
<title>JDBC 연동 테스트 예제</title>
</head>
<body>
<h3>
<%if(connect==true){ %>
   연결되었습니다.
<%}else{ %>
   연결에 실패하였습니다.
<%} %>
</h3>
</body>
</html>