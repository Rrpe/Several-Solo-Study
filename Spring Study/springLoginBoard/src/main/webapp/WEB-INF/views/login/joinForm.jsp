<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.btnhover {
	color: #116688;
}

.btnhover:hover {
	color: #000000;
}

.qwer th {
	padding: 10px;
	color: #116688;
	border-bottom: 3px solid #116688;
	text-align: left;
}

.qwer td {
	color: #666699;
	padding: 10px;
	border-bottom: 1px solid #DDDDDD;
}

.qwer tr:hover td {
	color: #000000;
}
</style>
<body>
	<form method="post" action="Join">
		<table class="qwer" align="center" style="border-collapse: collapse;"
			width="800" ehight="250" border="1">
			<tr>
				<th align="center" colspan="2">회원 기본 정보</th>
			</tr>
			<tr>
				<td id="qwer" width="30%" align="center">아이디:</td>
				<td width="70%"><input type="text" name="id" id = "id"
					maxlength="12">4~12자의영문 대소문자와 숫자로만 입력</td>
			</tr>
			<tr>
				<td width="30%" align="center">비밀번호:</td>
				<td width="70%"><input type="password" name="pass" id="pass"
					maxlength="12">4~12자의영문 대소문자와 숫자로만 입력</td>
			</tr>
			<tr>
				<td width="30%" align="center">비밀번호 확인:</td>
				<td width="70%"><input type="password" name="passcheck"
					id="passcheck" maxlength="12"></td>
			</tr>
			<tr>
				<td width="30%" align="center">이름:</td>
				<td width="70%"><input type="text" name="name" id="name"
					size="30"></td>
			</tr>
			<tr>
				<td width="30%" align="center">닉네임:</td>
				<td width="70%"><input type="text" name="nickname" id="nickname"
					size="30"></td>
			</tr>
		</table>
		<table align="center"
			style="border-collapse: collapse; margin-top: 5px;" width="800"
			ehight="250">
			<tr>
				<td style="background-color: white" align="center" colspan="2">
				<input class="btnhover" type="submit" name="submit" value="회원가입">
					<input class="btnhover" type="reset" name="reset" value="다시입력"></td>
			</tr>
		</table>
	</form>
</body>
</html>

<script>
 
  function validate(){
 
    var check=/^[a-zA-Z0-9]{4,12}$/; // 아이디, 비밀번호, 비밀번호 확인 유효성검사
 
    var id=document.getElementById("id");
    var pass=document.getElementById("pass");
    var passcheck=document.getElementById("passcheck");
    var name=document.getElementById("name");
    var nickname=document.getElementById("nickname");
// 아이디 입력 안 했을때
if(id.value==""){
  alert("아이디를 입력해주세요.");
  id.focus();
  return false;
 
}
// 아이디 정규식 체크
   if(check.test(id.value)){
 
     //return true;
   }else {
     alert("아이디가 잘못된 형식입니다. 다시 입력해주세요.");
     id.value="";
     id.focus();
     return false;
   }
 
   // 비밀번호 입력 안했을때
         if(pass.value==""){
             alert("비밀번호를 입력해주세요.");
             pass.focus();
             return false;
         }
 
        //비밀번호 정규식 체크
    if(check.test(pass.value)&&id.value!=pass.value){
      //정규식 체크를 통과하고 아이디와같지 않을때 통과
      //return true;
    }else{
 
      if(id.value==pass.value)
      {
        alert("아이디와 비밀번호가 일치합니다. 다시 입력해주세요.");
        pass.value="";
        pass.focus();
        return false;
      }else{
 
        alert("비밀번호가 잘못된 형식입니다. 다시 입력해주세요.");
        pass.value="";
        pass.focus();
        return false;
      }
 
    }
    // 비밀번호 확인란 입력 안했을 때
   if(passcheck.value==""){
       alert("비밀번호 확인란에 입력해주세요.");
       passcheck.focus();
       return false;
   }
 
   //비밀번호 확인 정규식 체크
   if(check.test(passcheck.value)&&pass.value==passcheck.value){
     //return true;
   }else {
 
     alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
     passcheck.value="";
     passcheck.focus();
     return false;
   }
   
   // 이름란 입력안했을때
   if(name.value==""){
     alert("이름을 입력해 주세요.");
     name.focus();
     return false;
   }
   
   if(nickname.value==""){
	     alert("닉네임을 입력해 주세요.");
	     nickname.focus();
	     return false;
	   }
  }
</script>