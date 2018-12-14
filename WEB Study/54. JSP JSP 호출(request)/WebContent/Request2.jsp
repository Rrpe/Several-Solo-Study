<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%	request.setCharacterEncoding("utf-8");	%>	<!-- 다른 url에서 값을 받아올때 한국어 일 경우 깨지지 않게 해줌 -->
<title>Request 테스트 폼</title>
</head>

<body>
<% String nname = request.getParameter("my_name"); %>	<!-- request.getParameter(name) name이름을 요청함 -->
<% String oobject = request.getParameter("object"); %>
<%String[] param = request.getParameterValues("hobby"); %> <!-- 배열로 받아줌 -->
<center>
<br>
<h2>Request 테스트 폼</h2><hr>
<table style="border-collapse: collapse;" border="1" cellpadding="5px" padding="50">
<tr>
	<td>
		이름:
	</td>
	<td>
		<%= nname %>
	</td>
</tr>
<tr>
	<td>
		직업:
	</td>
	<td>
		<%= oobject %>
	</td>
</tr>
<tr>
	<td>
		관심분야:
	</td>
	<td>
	<%for(int i=0; i<param.length; i++){ %>
       <%=param[i] %>
   <%} %>
	</td>
</tr>
</table>
<hr>
<h2>request 테스트 결과 - 2</h2>
<table border=0>
	<tr>
		<td>
		1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %><br>	<!-- 웹 서버로 정보를 요청한 웹 브라우저의 IP주소를 리턴한다. -->
		2. 요청 메서드 : <%= request.getMethod() %><br>		<!-- Servlet에서 사용한 메소드 출력(Post) 
															웹 서버로 요청 시, 요청에 사용된 요청 방식(GET, POST, PUT 등)을 리턴한다. -->
		<%
			Cookie cookie[] = request.getCookies();            // 요청정보로부터 쿠키를 가져온다.
		%>
		3. <%= cookie[0].getName() %> 에 설정된 쿠키값 : <%= cookie[0].getValue() %><br>		<!-- 쿠키의 값을 가져온다. --> 
		4. 프로토콜 : <%= request.getProtocol() %>		<!-- 클래스에서 재정의되면 HTTP 프로토콜(HTTP 또는 HTTPS)을 반환합니다. -->
		</td>
	</tr>
</table>
</center>

</body>
</html>