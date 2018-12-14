<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include 지시어 테스트</title>
</head>
<body>
      <h2 align="center">include 지시어 테스트</h2>
      <hr>
      <%@ include file="menu.jsp"%>
      <p>
      <table border=0 cellpadding=5 cellspacing=1 align="center">
         <tr>
            <td><font size=-1>
            <%@include file="carculat.jsp" %>
            </font></td>
            <td width="30">
            &nbsp;
            </td>
            <td><font size="-1">
            <%@include file="TimeOut.jsp" %>
            </font></td>
         </tr>
      </table>
</body>
</html>
