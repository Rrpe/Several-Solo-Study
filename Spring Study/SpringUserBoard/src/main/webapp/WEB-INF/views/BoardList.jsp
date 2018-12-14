<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.userboard.js.dto.BoardDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>MVC 게시판</title>
</head>

<body>
<div align="right">
<input type="button" onclick="location.href='LoginForm'" value="로그아웃"/>
</div>

<!-- 게시판 리스트 -->
<div align="center">
<table width=50% border="0" cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="4">MVC 게시판</td>
		<td align=right>
		</td>
	</tr>
	
	<tr align="center" valign="middle" bordercolor="#333333">
		<td style="font-family:Tahoma;font-size:8pt;" width="8%" height="26">
			<div align="center">제목</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="14%">
			<div align="center">작성자</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="17%">
			<div align="center">날짜</div>
		</td>
	</tr>
	
	<c:forEach items="${boardlist}" var="boardList">
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
		${boardList.BOARD_SUBJECT}
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
		${boardList.BOARD_NAME}
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
		${boardList.BOARD_DATE}
		</td>
	</tr>
	</c:forEach>
	
	<tr align="right">
		<td colspan="5">
	   		<a href="BoardWrite">[글쓰기]</a>
		</td>
	</tr>
</table>

</div>
</body>
</html>