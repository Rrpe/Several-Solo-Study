<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ForwardSendredirect.jsp</title>
</head>
<body>
<h2>forward, sendRedirect 테스트</h2>
<br>
<hr>
<br>
<form method="post" action="forward_action2.jsp">
<div>
	forward action : <input type="text" value=" " name="username" />
	<input type="submit" value="확인"/>
</div>
</form>
<br>
<form method="post" action="response_sendRedirect.jsp">
<div>
	response.sendRedirect : <input type="text" value=" " name="username" /> 
	<input type="submit" value="확인"/>
	<!-- 페이지를 이동시키는 메소드로 url로 주어진 페이지로 제어가 이동한다.
	유사한 것으로<jsp:forward>액션태크가 있다.
	
	차이점은
	response.sendRedirect() : 현재 페이지로의 요청을 단순하게  다른 url로 전환하는 역활만 하므로
	현재 페이지로 전달된 request나 response정보는 새로운 url로 전달되지 않는다.

	<jsp:foward> :  현재 페이지로 전달된 request와 reponse를 새로운 페이지에 전달하여 좀더 다양한
	활용이 가능하다.-->
</div>
</form>
</body>
</html>