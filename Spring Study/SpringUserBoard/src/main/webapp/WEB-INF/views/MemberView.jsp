<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<table border="1">
			<tr>
				<td>���̵�</td><td>${member.MEMBER_ID}</td>
			</tr>
			
			<tr>
				<td>��й�ȣ</td><td>${member.MEMBER_PW}</td>
			</tr>
			
			<tr>
				<td>�̸�</td><td>${member.MEMBER_NAME}</td>
			</tr>
			
			<tr>
				<td>����</td><td>${member.MEMBER_AGE}</td>
			</tr>
			
			<tr>
				<td>��ȭ��ȣ</td><td>${member.MEMBER_PHONE}</td>
			</tr>
			
			<tr>
				<td>�̸���</td><td>${member.MEMBER_EMAIL}</td>
			</tr>
	</table>
	<br>
	<button onclick="location.href = 'MemberList'">ȸ�� ����Ʈ</button>
</center>
</body>
</html>