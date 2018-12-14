<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "INSERT INTO STUDENT10 (num, name) VALUES (12,'홍길동')";
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
			out.println("<h3>데이터 출력에 문제가 발생하여 롤백하였습니다.</h3>");
		} else {
			conn.commit();
			out.println("<h3>데이터 삽입이 모두 완료되었습니다.");
		}
		pstmt.close();
		conn.setAutoCommit(true);
	} catch(Exception e) {
		out.println("<h3>데이터 삽입에 실패 하었습니다.");
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