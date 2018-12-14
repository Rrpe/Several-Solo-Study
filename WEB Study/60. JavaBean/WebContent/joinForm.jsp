<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8"/>
<title>회원 가입 만들기</title>
</head>
	<script type="text/javascript" src="Validate.js"></script>	<!-- 유효성검사 script -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>	<!-- 다음 주소 api -->
	<script type="text/javascript" src="DaumAddress.js"></script>	<!-- 다음 주소 api script -->

<script language="javascript">

	function validate() {
		var obj_id = document.getElementById("ide"); //아이디의 id값
		var obj_password = document.getElementById("pass"); //비밀번호의 id값
		var obj_chkpassword = document.getElementById("cpass"); //비밀번호확인의 id값
		var obj_email = document.getElementById("mail"); //e-mail의 id값
		var obj_name = document.getElementById("name"); //이름의 id값
		var obj_hobby = document.getElementsByName("hobby"); //체크박스의 취미 id값
		var obj_intro = document.getElementById("intro"); //자기소개란 id값

		var postcode = document.getElementById("sample4_postcode"); // 우편번호
		var roadAddress = document.getElementById("sample4_roadAddress"); // 도로명주소
		var jibunAddress = document.getElementById("sample4_jibunAddress"); // 지번주소
		var sangseAddress = document.getElementById("sample4_sangseAddress"); // 상세주소

		var regExp1 = /^[a-zA-Z0-9]{4,12}$/; //id와 비밀번호의 유효성 검사
		var regExp2 = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i; //e-mail의 유효성 검사
		var regExpName = /^[가-힝]{2,}$/; //이름의 유효성 검사

		if (!regExp1.test(obj_id.value)) //아이디 유효성 검사 후 4~12자의 영문 대소문자와 숫자의 유효성이 안 맞다면 공백을 주고 알람을 띄운다.
		//test - 정규식 메소드로 찾는 문자열이 들어있는지 아닌지를 알려준다.
		{
			alert("형식에 맞춰 ID를 입력하세요");
			obj_id.value = "";
			obj_id.focus(); // 버튼 - 엔터키를 눌러 버튼 클릭, 텍스트 - 커서 위치를 이동시켜 바로 입력되게 해줌. 
			return false;
		} else if (!regExp1.test(obj_password.value)) {
			alert("형식에 맞춰 비밀번호를 입력하세요");
			obj_password.value = "";
			obj_password.focus();
			return false;
		} else if (!((obj_chkpassword.value).slice(0,
				(obj_chkpassword.value).length) === (obj_password.value).slice(
				0, (obj_password.value).length)))
		//slice는 배열을 0부터 chkpassword길이까지 문자열을 가져옴
		{
			alert("비밀번호가 동일하지 않습니다.");
			obj_chkpassword.value = "";
			obj_chkpassword.focus();
			return false;
		} else if (((obj_chkpassword.value).slice(0,
				(obj_chkpassword.value).length) === (obj_id.value).slice(0,
				(obj_id.value).length))) {
			alert("비밀번호가 ID와 동일하면 안됩니다.");
			obj_password.value = "";
			obj_password.focus();
			obj_chkpassword.value = "";
			obj_chkpassword.focus();
			return false;
		} else if (!regExp2.test(obj_email.value)) {
			alert("올바른 이메일 형식이 아닙니다.");
			obj_email.value = "";
			obj_email.focus();
			return false;
		} else if (!regExpName.test(obj_name.value)) {
			alert("이름을 제대로 입력하세요");
			obj_name.value = "";
			obj_name.focus();
			return false;
		}

		//체크박스 유효성 검사
		else if (document.data.hobby[0].checked == false
				&& document.data.hobby[1].checked == false
				&& document.data.hobby[2].checked == false
				&& document.data.hobby[3].checked == false
				&& document.data.hobby[4].checked == false) {
			alert("관심분야를 체크해 주세요");
			return false;
		}

		//자기소개란 유효성 검사
		//공백이 있다면 안됨.
		else if (obj_intro.value == "") {
			alert("자기 소개란을 100자 내외로 기입해주세요");
			return false;
		}

		else if (postcode.value == "") {
			alert("우편번호을 입력해 주세요");
			postcode.focus();
			return false;
		} // 우편번호 입력 유무

		else if (roadAddress.value == "") {
			alert("도로명주소을 입력해 주세요");
			roadAddress.focus();
			return false;
		} // 도로명주소 입력 유무

		else if (jibunAddress.value == "") {
			alert("지번주소을 입력해 주세요");
			jibunAddress.focus();
			return false;
		} // 지번주소 입력 유무

		else if (sangseAddress.value == "") {
			alert("상세주소을 입력해 주세요");
			sangseAddress.focus();
			return false;
		} // 상세주소 입력 유무

		else {
			if (all_check()) {
				alert("회원가입을 진행합니다");
				return true;
			} else {
				return false;
			}
		}
	}

	//주민등록번호 유효성 검사
	function check_peoplenum() {
		var peoplenum = document.getElementById('peoplenum1').value
				+ document.getElementById('peoplenum2').value;
		//my_people_num1 = 주민번호 앞자리
		//my_people_num2 = 주민번호 뒷자리
		var fmt = /^\d{6}[1234]\d{6}$/; //

		if (!fmt.test(peoplenum)) {
			return false;
		}

		var birthYear = (peoplenum.charAt(6) <= "2") ? "19" : "20";
		birthYear += peoplenum.substr(0, 2);
		var birthMonth = peoplenum.substr(2, 2) - 1;
		var birthDate = peoplenum.substr(4, 2);
		var birth = new Date(birthYear, birthMonth, birthDate);

		if (birth.getYear() % 100 != peoplenum.substr(0, 2)
				|| birth.getMonth() != birthMonth
				|| birth.getDate() != birthDate) {
			return false;
		}

		var buf = new Array(13);
		for (var i = 0; i < 13; i++) {
			buf[i] = parseInt(peoplenum.charAt(i));
		}

		multipliers = [ 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5 ];

		for (var sum = 0, i = 0; i < 12; i++) {
			sum += (buf[i] *= multipliers[i]);
		}

		if ((11 - (sum % 11)) % 10 != buf[12]) {
			return false;
		}

		return true;
	}

	function all_check() {
		if (check_peoplenum()) {
			alert("올바른 주민등록번호입니다.");
			var year1 = document.getElementById("year");

			var num1 = document.getElementById('peoplenum1');
			var num2 = num1.value;
			var num3 = num2.substring(0, 2); //substring - 배열 0부터 시작해서 2앞에까지 출력
			var num4 = num2.substring(2, 4); //substring - 배열 2부터 시작해서 4앞에까지 출력
			var num5 = num2.substring(4, 6); //substring - 배열 4부터 시작해서 6앞에까지 출력

			year1.value = "19" + num3; // 주민번호 앞 두자리 뽑아와 그 앞에 19 추가

			document.data.mon.value = num4; // body부분의 드롭다운인 월(mon)부분을 주민번호 체크 성공시 자동으로 변경
			document.data.day.value = num5; // body부분의 드롭다운인 일(day)부분을 주민번호 체크 성공시 자동으로 변경     
			return true;

		} else
			var num1 = document.getElementById('peoplenum1');
		var num2 = document.getElementById('peoplenum2');
		alert("똑바로 입력하세요");
		num1.value = "";
		num1.focus();
		num2.value = "";

		return false;
	}//주민번호 유효성 검사 끝
</script>

<body>
    <form action="joinChk.jsp" method="post">
    
    <table width="800" height="230" border="1" align ="center">
    
        <tr>
            <td colspan="2"  align ="center" bgcolor="#B0E0E6" style="margin-top: 5px; margin-bottom: 5px;">회원 기본 정보</td>
        </tr>
        
        <tr>
            <td align ="center"  style="margin-top: 5px; margin-bottom: 5px;">아이디 </td>
            <td ><input type="text" name="ide" size="20" maxlength="12"  style="margin-top: 5px; margin-bottom: 5px;"/>4~12자의 영문 대소문자와 숫자로만 입력</td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">비밀번호 </td>
            <td><input type="password" name="pass" size="20" maxlength="12" style="margin-top: 5px; margin-bottom: 5px;"/>4~12자의 영문 대소문자와 숫자로만 입력 </td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">비밀번호 확인</td>
            <td><input type="password" name="cpass" size="20" maxlength="12" style="margin-top: 5px; margin-bottom: 5px;"/></td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">메일주소</td>
            <td  ><input type="text" name="mail" size="20" style="margin-top: 5px; margin-bottom: 5px;"/>예)hongildong@naver.com</td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">이 름</td>
            <td ><input type="text" name="name" size="20" style="margin-top: 5px; margin-bottom: 5px;" /></td>
        </tr>
        
        <tr>
            <td colspan="2" align="center" bgcolor="#B0E0E6" style="margin-top: 5px; margin-bottom: 5px;">개인 신상 정보</td>
        </tr>
        
        <tr>
            <td align ="center">주민등록번호</td>
            <td ><input type="text" name="주민번호" id="peoplenum1" size="6"maxlength="6" /> - <input type="password" id="peoplenum2" name="주민번호" size="7" maxlength="7"/>예)123456-1234567</td>
        </tr>
        
        <tr>
        	<td align ="center" style="margin-top: 5px; margin-bottom: 5px;">주 소</td>
        	<td>   	
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="margin-top: 5px;"><br>
				<input type="text" id="sample4_postcode" placeholder="우편번호" size="12" style="margin-top: 5px;" disabled><br>
				<input type="text" id="sample4_roadAddress" placeholder="도로명주소" size="40" style="margin-top: 5px;" disabled><br>
				<input type="text" id="sample4_jibunAddress" placeholder="지번주소" size="40" style="margin-top: 5px;" disabled><br>
				<input type="text" id="sample4_sangseAddress" placeholder="상세주소" size="40" style="margin-top: 5px; margin-bottom: 5px;">
				<span id="guide" style="color:#999"></span>
				<!-- 다음 주소 API -->
        	</td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">생 일</td>
            <td><input type="text" name="my_name" size="5" maxlength="4" id="year" />년 
                <select name= "mon" >
                    <option value="01">1</option>
                    <option value="02">2</option>
                    <option value="03">3</option>
                    <option value="04">4</option>
                    <option value="05">5</option>
                    <option value="06">6</option>
                    <option value="07">7</option>
                    <option value="08">8</option>
                    <option value="09">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select> 월
                <select name="day" style="margin-top: 5px; margin-bottom: 5px;">
                    <option value="01">1</option>
                    <option value="02">2</option>
                    <option value="03">3</option>
                    <option value="04">4</option>
                    <option value="05">5</option>
                    <option value="06">6</option>
                    <option value="07">7</option>
                    <option value="08">8</option>
                    <option value="09">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                   
                </select> 일
             </td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">관심 분야</td>
            <td>
                <input type="checkbox" name="hobby" value="컴퓨터" style="margin-top: 5px; margin-bottom: 5px;">컴퓨터
                <input type="checkbox" name="hobby" value="인터넷" style="margin-bottom: 5px;">인터넷
                <input type="checkbox" name="hobby" value="영화" style="margin-bottom: 5px;">영화
                <input type="checkbox" name="hobby" value="여행" style="margin-bottom: 5px;">여행
                <input type="checkbox" name="hobby" value="음악감상" style="margin-bottom: 5px;">음악감상
            </td>
        </tr>
        
        <tr align ="center">
            <td style="margin-top: 5px; margin-bottom: 5px;">자기 소개</td>
            <td><textarea name="intro" cols="70" rows="8" style="margin-top: 5px; margin-bottom: 5px;"></textarea></td>
        </tr>
        
	    </table><br />
	    <div align ="center">
	        <input type="submit" value="회원가입" style="border-radius:5px;"/>
	        <input type="reset" value="다시입력" style="border-radius:5px;"/>
	    </div>
    </form>
</body>
</html>