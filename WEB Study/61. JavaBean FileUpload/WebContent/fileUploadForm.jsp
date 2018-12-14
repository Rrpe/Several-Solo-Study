<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>fileUploadForm.jsp</title>
</head>

<body>
<center>
<form action="fileUpload.jsp" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan="2" align="center">
			<b>파일 업로드 폼</b>
			</td>
		</tr>
		
		<tr>
			<td>올린 사람 : 
			</td>
			<td>
				<input type="text" name="name" value="">
			</td>
		</tr>
		
		<tr>
			<td>제목 : 
			</td>
			<td>
				<input type="text" name="subject" value="">
			</td>
		</tr>
		
		<tr>
			<td>파일명1 : 
			</td>
			<td>
				<input type="file" name="filename1">
			</td>
		</tr>
		
		<tr>
			<td>파일명2 : 
			</td>
			<td>
				<input type="file" name="filename2">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송">
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>