<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
			<tr>
				<td>${info_list.MEMBER_ID}</td>
				<td>${info_list.MEMBER_PW}</td>
				<td>${info_list.MEMBER_EMAIL}</td>
				<td>${info_list.MEMBER_NAME}</td>
				<td>${info_list.MEMBER_JUMIN}</td>
				<td>${info_list.MEMBER_ADRESS}</td>
				<td>${info_list.MEMBER_MYM}</td>
			</tr>
	
	</table>
</body>
</html>