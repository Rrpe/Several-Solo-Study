<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
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
	//String temp[] = {"ȫ�浿", "��ȫ��", "����ȫ", "������"};
	
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
			out.println("<h3>���ڵ尡 ��ϵǾ����ϴ�.</h3>");
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
<jsp:forward page="SignIn.jsp"></jsp:forward>
</body>
</html>