<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%session.invalidate(); %>
	<form method="post" action="login">
		<table border="1">
			<tr>
				<h3>
					<td colspan="2">로그인 페이지</td>
				</h3>
			</tr>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인">
					<a href="JoinForm">회원가입</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
</body>
</html>