<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "INSERT INTO STUDENT10 (num, name) VALUES (12,'ȫ�浿')";
	String sql2 = "SELECT * FROM STUDENT10 WHERE num = 7";
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		
		conn = ds.getConnection();
		
		conn.setAutoCommit(false);
		
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		pstmt.close();
		
		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery();
		
		if (!rs.next()) {
			conn.rollback();
			out.println("<h3>������ ��¿� ������ �߻��Ͽ� �ѹ��Ͽ����ϴ�.</h3>");
		} else {
			conn.commit();
			out.println("<h3>������ ������ ��� �Ϸ�Ǿ����ϴ�.");
		}
		pstmt.close();
		conn.setAutoCommit(true);
	} catch(Exception e) {
		out.println("<h3>������ ���Կ� ���� �Ͼ����ϴ�.");
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