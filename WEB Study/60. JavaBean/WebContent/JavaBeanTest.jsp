<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="beantest" class="test.JavaBean" scope="page"/>  
<jsp:setProperty name="beantest" property="name" value="BeanTest!"/> 
<%-- 자바빈 객체의 멤버변수를 직접 수정하는 것이 아니라 setter 호출.
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>JavaBean Test</title>
</head>

<body>
<b>자바빈 사용 예제</b>
<h3><jsp:getProperty name="beantest" property="name"/></h3>
<h3><%= beantest.getName() %></h3>
<%-- 자바 빈 객체의 멤버 변수를 접근 하는 것이 아니라 getter 호출
 --%>
</body>
</html>