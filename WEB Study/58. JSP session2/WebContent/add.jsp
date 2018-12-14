<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	request.setCharacterEncoding("UTF-8");	%>
<html>
<head>
<meta charset="EUC-KR">

<title>add.jsp</title>
</head>

<body>
<center>
	<h2>쇼핑 목록</h2>
	<hr>
	<form action="checkOut.jsp">

		<%
			String productName = request.getParameter("productName");	//productName에 파라메타 값 저장 
			
			ArrayList<String> checkOutList = (ArrayList<String>) session.getAttribute("productList");	// productList가 존재하지않아서 NULL값을 넣어줌

			
			if (checkOutList == null) {
				checkOutList = new ArrayList<String>();
			}
			
			checkOutList.add(productName);
			session.setAttribute("productList", checkOutList);// 위에 추가 하고  저장 해야 한다
			
//			out.println("<script>alert('상품이(가) 추가 되었습니다.')</script>");
//			out.println("<script>history.back()</script>");
		%>
		<!-- 자바스크립트를 이용한 메세지 출력 -->
		<script type="text/javascript">
			alert("<%=productName %> 상품이 추가 되었습니다.");
			history.back();
		</script>
	</form>
</center>
</body>
</html>