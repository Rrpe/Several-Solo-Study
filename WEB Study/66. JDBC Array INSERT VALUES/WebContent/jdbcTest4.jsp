<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	Connection conn = null;
	String sql = "INSERT INTO student10 (num, name) VALUES (?,?)";
	//String temp[] = {"홍길동", "김홍일", "김재홍", "이종원"};
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		conn = ds.getConnection();
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		for(int i = 7; i <= 10; i++) {
			stmt.setInt(1,i);
			//stmt.setString(2, temp[i-7]);
			if(i == 7) {
				stmt.setString(2, "김준수");
			}
			else if(i == 8) {
				stmt.setString(2, "정유진");
			}
			else if(i == 9) {
				stmt.setString(2, "박종억");
			}
			else if(i == 10) {
				stmt.setString(2, "정의석");
			}
			
			if(stmt.executeUpdate() != 0) {
				out.println("<h3>" + i + "레코드가 등록되었습니다.</h3>");
			}
		}
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