<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>	<!-- getParameter로 value값을 받아올때 한국어가 안깨지게 해줌 -->
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
         <td>아이디</td>
         <td>이름</td>
      </tr>
   <c:forEach items="${list}" var="memberList">
         <tr>
            <td><a href="MemberView?MEMBER_ID=${memberList.MEMBER_ID}" >${memberList.MEMBER_ID}</a></td>
            <td>${memberList.MEMBER_NAME}</td>
            <td><a href="MemberDelete?MEMBER_ID=${memberList.MEMBER_ID}">Delete</a></td>
         </tr>
      </c:forEach>

   </table>
</center>
</body>
</html>