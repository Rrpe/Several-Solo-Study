<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("EUC-KR"); %>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <table>
      <tr>
         <th>���̵�</th>
      </tr>
   <c:forEach items="${list}" var="dto">
         <tr>
            <td><a href="MemberInfo.me?uid=${dto.MEMBER_ID}" >${dto.MEMBER_ID}</a></td>
            <td><a href="MemberDelete.me?uid=${dto.MEMBER_ID}">Delete</a></td>
         </tr>
      </c:forEach>

   </table>

</body>
</html>