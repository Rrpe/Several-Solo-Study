<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>회원가입</title>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- getParameter로 value값을 받아올때 한국어가 안깨지게 해줌 -->

</head>
<body>
	<form action="MemberJoinAction" method="post">

		<table name="data" width="800" height="230" border="1" align="center">

			<tr>
				<td colspan="2" align="center" bgcolor="#B0E0E6"
					style="margin-top: 5px; margin-bottom: 5px;">회원 기본 정보</td>
			</tr>

			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="MEMBER_ID" /></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="MEMBER_PW" /></td>
			</tr>
			<tr>
				<td>이름 :</td>
				<td><input type="text" name="MEMBER_NAME" /></td>
			</tr>
			<tr>
				<td>나이 :</td>
				<td><input type="text" name="MEMBER_AGE" maxlength=2 size=5 /></td>
			</tr>
			<tr>
				<td>휴대폰 번호 :</td>
				<td><input type="text" name="MEMBER_PHONE" size=30 /></td>
			</tr>
			<tr>
				<td>이메일 주소 :</td>
				<td><input type="text" name="MEMBER_EMAIL" size=30 /></td>
			</tr>
			<tr>
		</table>
		<br />
		<div align="center">
			<input type="submit" value="회원가입" style="border-radius: 5px;" /> <input
				type="reset" value="다시입력" style="border-radius: 5px;" />
		</div>
	</form>
</body>
</html>