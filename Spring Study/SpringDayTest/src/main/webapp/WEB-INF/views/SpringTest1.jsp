<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
Spring
<%-- 
bit에서 넘어 온 값 :::::
<%= request.getParameter("data") %> // 이 방식으로 하면 html을 다 읽고 리퀘스트 실행
--%>

<%-- <h4>${data1}</h4> <!-- EL문 (Expression Language) | jsp부분에서 JS안쓰고 사용가능한 JS문 -->
<h4>${data2}</h4> --%>

<h3>${info}</h3>
</body>
</html>