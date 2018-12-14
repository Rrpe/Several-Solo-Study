<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width=80% border="0" cellpadding="0" cellspacing="0">
		<tr align="center" valign="middle">
			<td colspan="4">MVC 게시판</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center">글번호</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="50%">
				<div align="center">작성자</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">글제목</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="17%">
				<div align="center">글내용</div>
			</td>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr align="center">
				<td>${dto.BID}</td>
				<td>${dto.ID}</td>
				<td>
					<a href="BoardDetailAction.bo?BID=${dto.BID}">${dto.BTITLE}</a>
				</td>
				<td>${dto.BCONTENT}</td>
			</tr>
		</c:forEach>
		<tr align="right">
			<td colspan="5"><a href="BoardWriteForm">[글쓰기]</a></td>
		</tr>
	</table>
</body>
</html>