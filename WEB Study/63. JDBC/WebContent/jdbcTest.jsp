<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
   Connection conn=null;
   
   String driver="oracle.jdbc.driver.OracleDriver";
   String url="jdbc:oracle:thin:@localhost:1521:ORCL";
   
   Boolean connect=false;
   
   try{
      Class.forName(driver);  // 1.����̺� �ε� 
      conn=DriverManager.getConnection(url,"hr","Password");  // 2. Connection ����
      
      connect=true;
      
      conn.close();
   }catch(Exception e){
      connect=false;
      e.printStackTrace();
   }
%>
<html>
<head>
<title>JDBC ���� �׽�Ʈ ����</title>
</head>
<body>
<h3>
<%if(connect==true){ %>
   ����Ǿ����ϴ�.
<%}else{ %>
   ���ῡ �����Ͽ����ϴ�.
<%} %>
</h3>
</body>
</html>