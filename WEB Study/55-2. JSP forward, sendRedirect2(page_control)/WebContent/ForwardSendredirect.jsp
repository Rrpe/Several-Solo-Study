<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ForwardSendredirect.jsp</title>
</head>
<body>
<h2>forward, sendRedirect �׽�Ʈ</h2>
<br>
<hr>
<br>
<form method="post" action="forward_action2.jsp">
<div>
	forward action : <input type="text" value=" " name="username" />
	<input type="submit" value="Ȯ��"/>
</div>
</form>
<br>
<form method="post" action="response_sendRedirect.jsp">
<div>
	response.sendRedirect : <input type="text" value=" " name="username" /> 
	<input type="submit" value="Ȯ��"/>
	<!-- �������� �̵���Ű�� �޼ҵ�� url�� �־��� �������� ��� �̵��Ѵ�.
	������ ������<jsp:forward>�׼���ũ�� �ִ�.
	
	��������
	response.sendRedirect() : ���� ���������� ��û�� �ܼ��ϰ�  �ٸ� url�� ��ȯ�ϴ� ��Ȱ�� �ϹǷ�
	���� �������� ���޵� request�� response������ ���ο� url�� ���޵��� �ʴ´�.

	<jsp:foward> :  ���� �������� ���޵� request�� reponse�� ���ο� �������� �����Ͽ� ���� �پ���
	Ȱ���� �����ϴ�.-->
</div>
</form>
</body>
</html>