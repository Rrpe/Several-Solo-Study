<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="we.can.dothis.dto.BoardDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MVC 게시판</title>
<script language="javascript">
	function addboard() {
		boardmodifyform.submit();
	}
</script>
<%
	BoardDTO board = (BoardDTO) request.getAttribute("board_detail");
	String id = (String) session.getAttribute("idSession");
%>
</head>
<body>
	<form action="BoardModifyAction" method="post" name="boardmodifyform">
		<input name="BID" type="hidden" value="<%=board.getBID()%>">
		<table cellpadding="0" cellspacing="0">
			<tr align="center" valign="middle">
				<td colspan="2">MVC 게시판</td>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12" height="16">
					<div align="center">글쓴이</div>
				</td>
				<td><input name="ID" type="text" size="10"
					maxlength="10" value="<%=id%>" readonly /></td>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12" height="16">
					<div align="center">제 목</div>
				</td>
				<td><input name="BTITLE" type="text" size="50"
					maxlength="100" value="<%=board.getBTITLE()%>" /></td>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12">
					<div align="center">내 용</div>
				</td>
				<td><textarea name="BCONTENT" cols="67" rows="15"><%=board.getBCONTENT()%></textarea>
				</td>
			</tr>
			<tr bgcolor="cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr align="center" valign="middle">
				<td colspan="2"><a href="javascript:addboard()">[등록]</a></td>
			</tr>
		</table>
	</form>
</body>
</html>