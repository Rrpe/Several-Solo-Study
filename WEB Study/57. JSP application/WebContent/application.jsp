<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application.jsp</title>
</head>

<body>
<h2>application 예제</h2>
<hr>
1. 서버정보 : <%= application.getServerInfo() %><br>	<!-- 웹 서버 이름과 버전을 리턴한다.  -->
2. 서블릿 API 버전 정보 : <%= application.getMajorVersion()+"."+application.getMinorVersion() %> <!-- Major = api버전 앞에 큰 틀(3.xx) // Minor = api버전 뒤에 작은 틀 (x.1 3) -->
3. application.jsp 파일의 실제 경로 : <%= application.getRealPath("application.jsp") %> <!-- 지정한 경로를 웹 어플리케이션 시스템상의 경로로 변경하여 리턴한다. -->

<hr>
setAttribute 로 username 변수에 "홍길동" 설정<p>
<%
	application.setAttribute("username", "홍길동"); 
	//  클래스에서 구현될 때, 특성을 지정하고 url 서버에 할당할 해당 특성 값을 지정합니다.
	//	SetAttribute(string name(객체 이름), string value(값));
	
	application.log("username=홍길동");
	// console 창에 log 값 띄움
	
	application.setAttribute("count", 1);
	
%>

<a href="application_result.jsp">확인하기</a>

</body>
</html>