<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	Connection conn = null;
	String sql = "INSERT INTO student10 (num, name) VALUES (?,?)";
	//String temp[] = {"ȫ�浿", "��ȫ��", "����ȫ", "������"};
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		conn = ds.getConnection();
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		for(int i = 7; i <= 10; i++) {
			stmt.setInt(1,i);
			//stmt.setString(2, temp[i-7]);
			if(i == 7) {
				stmt.setString(2, "���ؼ�");
			}
			else if(i == 8) {
				stmt.setString(2, "������");
			}
			else if(i == 9) {
				stmt.setString(2, "������");
			}
			else if(i == 10) {
				stmt.setString(2, "���Ǽ�");
			}
			
			if(stmt.executeUpdate() != 0) {
				out.println("<h3>" + i + "���ڵ尡 ��ϵǾ����ϴ�.</h3>");
			}
		}
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