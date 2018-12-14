<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter로 value값을 받아올때 한국어가 안깨지게 해줌 -->
<% String id = request.getParameter("ide"); %>
<% String pass = request.getParameter("pass"); %>
<% String mail = request.getParameter("mail"); %>
<% String name = request.getParameter("name"); %>
<% String jumin = request.getParameter("peoplenum1") + "-" + request.getParameter("peoplenum2") ; %>
<% String adr = request.getParameter("sample4_postcode1") + "-" + request.getParameter("sample4_postcode2") + "-" +  request.getParameter("sample4_postcode3") + "-" +  request.getParameter("sample4_postcode4"); %>
<% String mym = request.getParameter("intro"); %>
<%
	Connection conn = null;
	String sql = "INSERT INTO STUDENT (ID, PASS, MAIL, NAME, JUMIN, ADRESS, MYM) VALUES (?, ?, ?, ?, ?, ?, ?)";
	//String temp[] = {"홍길동", "김홍일", "김재홍", "이종원"};
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		conn = ds.getConnection();
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		stmt.setString(1, id);
		stmt.setString(2, pass);
		stmt.setString(3, mail);
		stmt.setString(4, name);
		stmt.setString(5, jumin);
		stmt.setString(6, adr);
		stmt.setString(7, mym);
		
		if(stmt.executeUpdate() != 0) {
			out.println("<h3>레코드가 등록되었습니다.</h3>");
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
<jsp:forward page="SignIn.jsp"></jsp:forward>
</body>
</html>