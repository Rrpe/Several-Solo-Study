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
	<h2>���� ���</h2>
	<hr>
	<form action="checkOut.jsp">

		<%
			String productName = request.getParameter("productName");	//productName�� �Ķ��Ÿ �� ���� 
			
			ArrayList<String> checkOutList = (ArrayList<String>) session.getAttribute("productList");	// productList�� ���������ʾƼ� NULL���� �־���

			
			if (checkOutList == null) {
				checkOutList = new ArrayList<String>();
			}
			
			checkOutList.add(productName);
			session.setAttribute("productList", checkOutList);// ���� �߰� �ϰ�  ���� �ؾ� �Ѵ�
			
//			out.println("<script>alert('��ǰ��(��) �߰� �Ǿ����ϴ�.')</script>");
//			out.println("<script>history.back()</script>");
		%>
		<!-- �ڹٽ�ũ��Ʈ�� �̿��� �޼��� ��� -->
		<script type="text/javascript">
			alert("<%=productName %> ��ǰ�� �߰� �Ǿ����ϴ�.");
			history.back();
		</script>
	</form>
</center>
</body>
</html>