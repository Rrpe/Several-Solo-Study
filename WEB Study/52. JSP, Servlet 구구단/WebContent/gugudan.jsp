<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>GuguDan</title>
</head>

<style>
.col {
	border-bottom: 2px solid;
	border-right: 2px solid;
	border-top: 2px solid;
	border-left: 2px solid;
}
.row {
	border-bottom: 2px solid;
	border-right: 2px solid;
	border-top: 2px solid;
	border-left: 2px solid;
}
.ggagdugi {
	color: blue;
	border-top: 2px solid;
	border-left: 2px solid;
}
</style>

<body>
<br>
<h2 align="center">구구단</h2>
<hr>
<br>
<table border="1" cellpadding="5px" align="center" style="border-collapse: collapse;">

	<% for(int i = 0; i <= 9; i++) { %>
	
	<tr>
		<%if(i == 0) { %>
			<td class="ggagdugi"></td>
			
			<% for(int k = 2; k <= 9; k++) { %>
			<td class="col" style="font-weight: 700; color: blue;">
			<%= k %>
			</td>
			
			<% } %>
		<% } %>
		
		<% if(i > 0) { %>
			<td class="row" style="font-weight: 700; color: blue;">
			<%=i %>
			</td>
			
			<% for(int j = 2; j <= 9; j++) { %>
				<td>
				<%= j %> x <%=i %> = <%=j*i %>
				</td>
			<% } %>
			
		<% } %>
	</tr>
	
	<% } %>
</table>
</body>
</html>
