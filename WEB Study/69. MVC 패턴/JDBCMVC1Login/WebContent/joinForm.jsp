<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.btnhover {
	color: #116688;
}

.btnhover:hover {
	color: #000000;
}

.qwer th {
	padding: 10px;
	color: #116688;
	border-bottom: 3px solid #116688;
	text-align: left;
}

.qwer td {
	color: #666699;
	padding: 10px;
	border-bottom: 1px solid #DDDDDD;
}

.qwer tr:hover td {
	color: #000000;
}
</style>
<body>
	<form method="post" action="joinProcess.jsp">
		<table class="qwer" align="center" style="border-collapse: collapse;"
			width="800" ehight="250" border="1">
			<tr>
				<th align="center" colspan="2">회원 기본 정보</th>
			</tr>
			<tr>
				<td id="qwer" width="30%" align="center">아이디:</td>
				<td width="70%"><input type="text" name="uid" id="uid"
					maxlength="12">4~12자의영문 대소문자와 숫자로만 입력</td>
			</tr>
			<tr>
				<td width="30%" align="center">비밀번호:</td>
				<td width="70%"><input type="password" name="upw" id="upw"
					maxlength="12">4~12자의영문 대소문자와 숫자로만 입력</td>
			</tr>
			<tr>
				<td width="30%" align="center">비밀번호 확인:</td>
				<td width="70%"><input type="password" name="checkupw"
					id="checkupw" maxlength="12"></td>
			</tr>
			<tr>
				<td width="30%" align="center">이름:</td>
				<td width="70%"><input type="text" name="uname" id="uname"
					size="30"></td>
			</tr>
			<tr>
				<td width="30%" align="center">닉네임:</td>
				<td width="70%"><input type="text" name="unic" id="unic"
					size="30"></td>
			</tr>
		</table>
		<table align="center"
			style="border-collapse: collapse; margin-top: 5px;" width="800"
			ehight="250">
			<tr>
				<td style="background-color: white" align="center" colspan="2">
				<input class="btnhover" type="submit" name="submit" value="회원가입">
					<input class="btnhover" type="reset" name="reset" value="다시입력"></td>
			</tr>
		</table>
	</form>
</body>
</html>