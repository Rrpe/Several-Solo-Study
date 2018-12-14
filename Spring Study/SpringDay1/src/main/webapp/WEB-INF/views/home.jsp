<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<form action="SpringTest1" method="get">
<input type="text" name="data" value="">
<input type="text" name="data2" value="">
<input type="submit">
</form>

</body>
</html>
