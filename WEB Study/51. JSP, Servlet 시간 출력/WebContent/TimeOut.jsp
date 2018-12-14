<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Import 속성 테스트  </title>
</head>
<body>
<h1>현재 시간은 <%=new SimpleDateFormat().format(new Date())%>입니다.</h1>
</body>
</html>