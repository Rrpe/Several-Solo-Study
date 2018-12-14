<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	request.setCharacterEncoding("UTF-8");	%>
<html>
<head>
<meta charset=UTF-8>
<title>setProduct.jsp</title>
</head>

<body>
    <center>
        <!-- 세션 받아오기   -->
        <%
        	//out.println("<script>alert('로그인 되었습니다.')</script>");
        	session.setAttribute("NAME", request.getParameter("userid"));
            String name = (String) session.getAttribute("NAME") + " 님이 로그인 되었습니다.";
        %>
        <%= name %>
        <hr>
        <br>
        <!-- select으로 선택 창을 만든다 -->
        <!-- form으로  -->
        <h2>상품 목록</h2>
        <form action="add.jsp" method="post">
            <select name="productName">
 
                <option value="초코우유">초코우유</option>
                <option value="멜론우유">멜론우유</option>
                <option value="바나나우유">바나나우유</option>
                <option value="딸기우유">딸기우유</option>
                <option value="우유">우유</option>
            </select> <input type="submit" value="추가">
        </form>
        <!-- href 로 원하는 화면 으로 넘어간다 -->
        <br>
        <a href="checkOut.jsp">주문</a>
        </center>
</body>
 
</html>