<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	
request.setCharacterEncoding("EUC-KR"); //<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
session.invalidate();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Login</title>
<style>
.btnhover {
    color: #116688;
}

.btnhover:hover {
    color: #000000;
}

.qwer th {
    padding: 10px;
    color: #f9f9f9;
    border-bottom: 3px solid #9d8f8f;
    text-align: left;
    background-color: #625757;
}

.qwer td {
    
    padding: 10px;
    border-bottom: 1px solid #DDDDDD;
}

.qwer tr:hover td {
    color: #cca2e1;   /* ���콺 ���ٽ� ����ȭ */
}
</style>
<!-- 
<script type="text/javascript">
	function page_href() {

		location.href = "SignUp.jsp";

	}
</script> -->
</head>
<body>
<form action="../MemberLoginAction.mo" method="post">
        <table class="qwer" align="center" style="border-collapse: collapse;"
            width="800" ehight="250" border="1">
            <tr>
                <th align="center" colspan="2">�α���</th>
            </tr>
            <tr>
                <td id="qwer" width="30%" align="center">���̵�:</td>
                <td width="70%"><input type="text" name="uid" id="ide"
                    maxlength="12"></td>
            </tr>
            <tr>
                <td width="30%" align="center">��й�ȣ:</td>
                <td width="70%"><input type="password" name="upw" id="pass"
                    maxlength="12"></td>
            </tr>
           <tr>
                <td style="background-color: white" align="center" colspan="2">
                <input class="btnhover" type="submit" name="submit" value="�α���">
                <input class="btnhover" type="button" name="submit" value="ȸ������" onclick="location.href = 'JoinForm.jsp'">
                <input class="btnhover" type="reset" name="reset" value="�ٽ��Է�"></td>
            </tr>
        </table>
    </form>
</body>
</html>