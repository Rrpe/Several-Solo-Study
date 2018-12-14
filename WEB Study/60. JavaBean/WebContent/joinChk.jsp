<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page import = "test.JoinBean" %>


<jsp:useBean id="beantest" class="test.JoinBean" scope="page"/>  
<jsp:setProperty name="beantest" property="*" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<%
	request.setCharacterEncoding("UTF-8"); 
%>
<title>joinChk.jsp</title>
</head>

<body>
<h2>아이디<jsp:getProperty name="beantest" property="ide"/></h2>
<h2>비밀번호<jsp:getProperty name="beantest" property="pass"/></h2>
<h2>비밀번호 확인<jsp:getProperty name="beantest" property="cpass"/></h2>
<h2>이메일<jsp:getProperty name="beantest" property="mail"/></h2>
<h2>이름<jsp:getProperty name="beantest" property="name"/></h2>
<h2>취미<jsp:getProperty name="beantest" property="hobby"/></h2>
<h2>자기소개<jsp:getProperty name="beantest" property="intro"/></h2>
<h4><%= beantest.getIde() %></h4>
<h4><%= beantest.getPass() %></h4>
<h4><%= beantest.getCpass() %></h4>
<h4><%= beantest.getMail() %></h4>
<h4><%= beantest.getName() %></h4>
<h4><%= beantest.getHobby() %></h4>
<h4><%= beantest.getIntro() %></h4>

</body>
</html>