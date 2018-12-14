<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"> <!-- //EUC-KR -->
<title>request 테스트 폼</title>

<script language="javascript">
	document.cookie = "test=OK.";	// cookie 값을 OK. 리턴 시켜줌.
</script>

</head>

<body>
<h2 align="center">request 테스트 폼</h2>
<br>
<hr>
<br>
<form name="form" action="Request2.jsp" method="post">
<table align="center" style="border-collapse: collapse;" border="1" cellpadding="5px">
	<tr>
		<td>
			이름
		</td>
		<td>
			<input type="text" name="my_name" value=" ">
		</td>
	</tr>
	
	<tr>
		<td>
			직업
		</td>
		<td>
			<select name="object">
			<option value="학생">학생</option>
			<option value="회사원">회사원</option>
			<option value="자영업">자영업</option>
			<option value="기타">기타</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td>
			관심분야
		</td>
		<td>
			<input type="checkbox" name="hobby" value="정치" style="margin-top: 2px; margin-bottom: 2px;">정치
            <input type="checkbox" name="hobby" value="사회" style="margin-bottom: 2px;">사회
            <input type="checkbox" name="hobby" value="정보통신" style="margin-bottom: 2px;">정보통신
		</td>
	</tr>
	
	<tr align="center">
		<td colspan="2">
			<input type="submit" id="btn_yes" value="확인">
			<input type="reset" id="btn_no" value="취소">
		</td>
	</tr>
</table>
</form>
</body>
</html>