<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="beantest" class="test.JavaBean" scope="page"/>  
<jsp:setProperty name="beantest" property="name" value="BeanTest!"/> 
<%-- �ڹٺ� ��ü�� ��������� ���� �����ϴ� ���� �ƴ϶� setter ȣ��.
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>JavaBean Test</title>
</head>

<body>
<b>�ڹٺ� ��� ����</b>
<h3><jsp:getProperty name="beantest" property="name"/></h3>
<h3><%= beantest.getName() %></h3>
<%-- �ڹ� �� ��ü�� ��� ������ ���� �ϴ� ���� �ƴ϶� getter ȣ��
 --%>
</body>
</html>