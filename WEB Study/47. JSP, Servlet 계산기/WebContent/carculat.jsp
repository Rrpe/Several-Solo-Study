<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>계산기</title>
</head>

<body>
<h2 align="center">계산 결과</h2>
<hr>
<form name="form1" action="CalServlet" method="post">
<div align="center">
	<input type="text" name="num1">
	<select name="oper">
	<option value="+">+</option>
	<option value="-">-</option>
	<option value="*">*</option>
	<option value="/">/</option>
	</select>
	<input type="text" name="num2">
	<input type="submit" name="result" value="계산">
	<input type="reset" name="clear" value="다시입력">
</div>
</form>
</body>
</html>