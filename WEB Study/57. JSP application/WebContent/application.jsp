<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application.jsp</title>
</head>

<body>
<h2>application ����</h2>
<hr>
1. �������� : <%= application.getServerInfo() %><br>	<!-- �� ���� �̸��� ������ �����Ѵ�.  -->
2. ���� API ���� ���� : <%= application.getMajorVersion()+"."+application.getMinorVersion() %> <!-- Major = api���� �տ� ū Ʋ(3.xx) // Minor = api���� �ڿ� ���� Ʋ (x.1 3) -->
3. application.jsp ������ ���� ��� : <%= application.getRealPath("application.jsp") %> <!-- ������ ��θ� �� ���ø����̼� �ý��ۻ��� ��η� �����Ͽ� �����Ѵ�. -->

<hr>
setAttribute �� username ������ "ȫ�浿" ����<p>
<%
	application.setAttribute("username", "ȫ�浿"); 
	//  Ŭ�������� ������ ��, Ư���� �����ϰ� url ������ �Ҵ��� �ش� Ư�� ���� �����մϴ�.
	//	SetAttribute(string name(��ü �̸�), string value(��));
	
	application.log("username=ȫ�浿");
	// console â�� log �� ���
	
	application.setAttribute("count", 1);
	
%>

<a href="application_result.jsp">Ȯ���ϱ�</a>

</body>
</html>