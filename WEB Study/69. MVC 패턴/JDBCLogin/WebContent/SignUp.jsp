<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>ȸ������</title>
<%	request.setCharacterEncoding("EUC-KR");	%>	<!-- getParameter�� value���� �޾ƿö� �ѱ�� �ȱ����� ���� -->
<script language="javascript">
    
        function validate()
        {
            var obj_id = document.getElementById("ide");		//���̵��� id��
            var obj_password = document.getElementById("pass");		//��й�ȣ�� id��
            var obj_chkpassword = document.getElementById("cpass");		//��й�ȣȮ���� id��
            var obj_email = document.getElementById("mail");		//e-mail�� id��
            var obj_name = document.getElementById("name");		//�̸��� id��
            var obj_hobby = document.getElementsByName("hobby");	//üũ�ڽ��� ��� id��
            var obj_intro =  document.getElementById("intro");		//�ڱ�Ұ��� id��
          
            var postcode = document.getElementById("sample4_postcode"); // �����ȣ
            var roadAddress = document.getElementById("sample4_roadAddress"); // ���θ��ּ�
            var jibunAddress = document.getElementById("sample4_jibunAddress"); // �����ּ�
            var sangseAddress = document.getElementById("sample4_sangseAddress"); // ���ּ�
            
            var regExp1 = /^[a-zA-Z0-9]{4,12}$/;			//id�� ��й�ȣ�� ��ȿ�� �˻�
            var regExp2 = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;		//e-mail�� ��ȿ�� �˻�
            var regExpName = /^[��-��]{2,}$/;					//�̸��� ��ȿ�� �˻�
            
            if(!regExp1.test(obj_id.value))	//���̵� ��ȿ�� �˻� �� 4~12���� ���� ��ҹ��ڿ� ������ ��ȿ���� �� �´ٸ� ������ �ְ� �˶��� ����.
            	//test - ���Խ� �޼ҵ�� ã�� ���ڿ��� ����ִ��� �ƴ����� �˷��ش�.
            {
                alert("���Ŀ� ���� ID�� �Է��ϼ���");
                obj_id.value = "";
                obj_id.focus();		// ��ư - ����Ű�� ���� ��ư Ŭ��, �ؽ�Ʈ - Ŀ�� ��ġ�� �̵����� �ٷ� �Էµǰ� ����. 
                return false;
            }
            else if (!regExp1.test(obj_password.value))
            {
                alert("���Ŀ� ���� ��й�ȣ�� �Է��ϼ���");
                obj_password.value = "";
                obj_password.focus();
                return false;
            } 
            else if (!((obj_chkpassword.value).slice(0, (obj_chkpassword.value).length) === (obj_password.value).slice(0, (obj_password.value).length))) 
    			//slice�� �迭�� 0���� chkpassword���̱��� ���ڿ��� ������
            {
                alert("��й�ȣ�� �������� �ʽ��ϴ�.");
                obj_chkpassword.value = "";
                obj_chkpassword.focus();
                return false;
            } 
            else if (((obj_chkpassword.value).slice(0, (obj_chkpassword.value).length) === (obj_id.value).slice(0, (obj_id.value).length))) 
            {
                alert("��й�ȣ�� ID�� �����ϸ� �ȵ˴ϴ�.");
                obj_password.value = "";
                obj_password.focus();
                obj_chkpassword.value = "";
                obj_chkpassword.focus();
                return false;
            }
            else if (!regExp2.test(obj_email.value))
            {
                alert("�ùٸ� �̸��� ������ �ƴմϴ�.");
                obj_email.value = "";
                obj_email.focus();
                return false;
            }
            else if (!regExpName.test(obj_name.value))
            {
                alert("�̸��� ����� �Է��ϼ���");
                obj_name.value = "";
                obj_name.focus();
                return false;
            } 
            
            //üũ�ڽ� ��ȿ�� �˻�
            else if(document.data.hobby[0].checked==false && 
                    document.data.hobby[1].checked==false && 
                    document.data.hobby[2].checked==false && 
                    document.data.hobby[3].checked==false && 
                    document.data.hobby[4].checked==false)
            {
                 alert("���ɺо߸� üũ�� �ּ���");
                 return false;
            }
          
            //�ڱ�Ұ��� ��ȿ�� �˻�
            //������ �ִٸ� �ȵ�.
            else if(obj_intro.value=="")
            {
                alert("�ڱ� �Ұ����� 100�� ���ܷ� �������ּ���");
                return false;
            }
            
            else if(postcode.value == "")
            {
                alert("�����ȣ�� �Է��� �ּ���");
                postcode.focus();
                return false;
            } // �����ȣ �Է� ����
             
            else if(roadAddress.value == "")
            {
                alert("���θ��ּ��� �Է��� �ּ���");
                roadAddress.focus();
                return false;
            } // ���θ��ּ� �Է� ����
             
            else if(jibunAddress.value == "")
            {
                alert("�����ּ��� �Է��� �ּ���");
                jibunAddress.focus();
                return false;
             } // �����ּ� �Է� ����
            
            else if(sangseAddress.value == "")
            {
                alert("���ּ��� �Է��� �ּ���");
                sangseAddress.focus();
                return false;
            } // ���ּ� �Է� ����
            
            else
            {
                if(all_check())
                {
                   alert("ȸ�������� �����մϴ�");
                   return true;
                }
                else
                {
                   return false;
                }
             }
          }
   //�ֹε�Ϲ�ȣ ��ȿ�� �˻�
        function check_peoplenum() {
            var peoplenum = document.getElementById('peoplenum1').value + document.getElementById('peoplenum2').value;
            //my_people_num1 = �ֹι�ȣ ���ڸ�
            //my_people_num2 = �ֹι�ȣ ���ڸ�
            var fmt = /^\d{6}[1234]\d{6}$/;  //
            
            if (!fmt.test(peoplenum)) {
                return false;
            }
            var birthYear = (peoplenum.charAt(6) <= "2") ? "19" : "20";
            birthYear += peoplenum.substr(0, 2);
            var birthMonth = peoplenum.substr(2, 2) - 1;
            var birthDate = peoplenum.substr(4, 2);
            var birth = new Date(birthYear, birthMonth, birthDate);
            if (birth.getYear() % 100 != peoplenum.substr(0, 2) || birth.getMonth() != birthMonth || birth.getDate() != birthDate)
            {
                return false;
            }
            var buf = new Array(13);
            for (var i = 0; i < 13; i++)
            {
            	buf[i] = parseInt(peoplenum.charAt(i));
            }
            
            multipliers = [2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5];
            
            for (var sum = 0, i = 0; i < 12; i++)
            {
            	sum += (buf[i] *= multipliers[i]);
            }
            if ((11 - (sum % 11)) % 10 != buf[12])
            {
                return false;
            }
            return true;
        }
        function all_check()
        {
            if (check_peoplenum()) {
                alert("�ùٸ� �ֹε�Ϲ�ȣ�Դϴ�.");
                var year1 = document.getElementById("year");
           
                var num1 = document.getElementById('peoplenum1');
                var num2 = num1.value;
                var num3 = num2.substring(0, 2);	//substring - �迭 0���� �����ؼ� 2�տ����� ���
                var num4 = num2.substring(2, 4);	//substring - �迭 2���� �����ؼ� 4�տ����� ���
                var num5 = num2.substring(4, 6);	//substring - �迭 4���� �����ؼ� 6�տ����� ���
                
                year1.value = "19" + num3;		// �ֹι�ȣ �� ���ڸ� �̾ƿ� �� �տ� 19 �߰�
          
                document.data.mon.value = num4;		// body�κ��� ��Ӵٿ��� ��(mon)�κ��� �ֹι�ȣ üũ ������ �ڵ����� ����
                document.data.day.value = num5;   	// body�κ��� ��Ӵٿ��� ��(day)�κ��� �ֹι�ȣ üũ ������ �ڵ����� ����     
                return true;
                
            }
            else
               var num1 = document.getElementById('peoplenum1');
               var num2 = document.getElementById('peoplenum2');        
                alert("�ȹٷ� �Է��ϼ���");
                num1.value = "";
                num1.focus();
                num2.value = "";
            return false;
        }//�ֹι�ȣ ��ȿ�� �˻� ��
    </script>

</head>
<body>
    <form action="SignUpProcess.jsp" method="post" name="data" >
    
    <table name="data" width="800" height="230" border="1" align ="center">
    
        <tr>
            <td colspan="2"  align ="center" bgcolor="#B0E0E6" style="margin-top: 5px; margin-bottom: 5px;">ȸ�� �⺻ ����</td>
        </tr>
        
        <tr>
            <td align ="center"  style="margin-top: 5px; margin-bottom: 5px;">���̵� </td>
            <td ><input type="text" name="ide" id="ide" size="20" maxlength="12"  style="margin-top: 5px; margin-bottom: 5px;"/>4~12���� ���� ��ҹ��ڿ� ���ڷθ� �Է�</td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">��й�ȣ </td>
            <td><input type="password" id="pass" name="pass" size="20" maxlength="12" style="margin-top: 5px; margin-bottom: 5px;"/>4~12���� ���� ��ҹ��ڿ� ���ڷθ� �Է� </td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">��й�ȣ Ȯ��</td>
            <td><input type="password" name="��й�ȣȮ��" id="cpass" size="20" maxlength="12" style="margin-top: 5px; margin-bottom: 5px;"/></td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">�����ּ�</td>
            <td  ><input type="text" name="mail" id="mail" size="20" style="margin-top: 5px; margin-bottom: 5px;"/>��)hongildong@naver.com</td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">�� ��</td>
            <td ><input type="text" name="name"  id="name" size="20" style="margin-top: 5px; margin-bottom: 5px;" /></td>
        </tr>
        
        <tr>
            <td colspan="2" align="center" bgcolor="#B0E0E6" style="margin-top: 5px; margin-bottom: 5px;">���� �Ż� ����</td>
        </tr>
        
        <tr>
            <td align ="center">�ֹε�Ϲ�ȣ</td>
            <td ><input type="text" name="peoplenum1" id="peoplenum1" size="6"maxlength="6" /> - <input type="password" id="peoplenum2" name="peoplenum2" size="7" maxlength="7"/>��)123456-1234567</td>
        </tr>
        
        <tr>
        	<td align ="center" style="margin-top: 5px; margin-bottom: 5px;">�� ��</td>
        	<td>   	
				<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��" style="margin-top: 5px;"><br>
				<input type="text" name="sample4_postcode1" id="sample4_postcode" placeholder="�����ȣ" size="12" style="margin-top: 5px;" ><br>
				<input type="text" name="sample4_postcode2" id="sample4_roadAddress" placeholder="���θ��ּ�" size="40" style="margin-top: 5px;" ><br>
				<input type="text" name="sample4_postcode3" id="sample4_jibunAddress" placeholder="�����ּ�" size="40" style="margin-top: 5px;" ><br>
				<input type="text" name="sample4_postcode4" id="sample4_sangseAddress" placeholder="���ּ�" size="40" style="margin-top: 5px; margin-bottom: 5px;">
				<span id="guide" style="color:#999"></span>
				
				<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
				<script>
				    //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
				    function sample4_execDaumPostcode() {
				        new daum.Postcode({
				            oncomplete: function(data) {
				                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
				
				                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
				                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
				                var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
				                var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
				
				                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
				                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
				                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
				                    extraRoadAddr += data.bname;
				                }
				                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
				                if(data.buildingName !== '' && data.apartment === 'Y'){
				                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				                }
				                // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
				                if(extraRoadAddr !== ''){
				                    extraRoadAddr = ' (' + extraRoadAddr + ')';
				                }
				                // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
				                if(fullRoadAddr !== ''){
				                    fullRoadAddr += extraRoadAddr;
				                }
				
				                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
				                document.getElementById('sample4_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
				                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
				                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
				
				                // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
				                if(data.autoRoadAddress) {
				                    //����Ǵ� ���θ� �ּҿ� ������ �ּҸ� �߰��Ѵ�.
				                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				                    document.getElementById('guide').innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
				
				                } else if(data.autoJibunAddress) {
				                    var expJibunAddr = data.autoJibunAddress;
				                    document.getElementById('guide').innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
				
				                } else {
				                    document.getElementById('guide').innerHTML = '';
				                }
				            }
				        }).open();
				    }
				</script>
        	
        	</td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">�� ��</td>
            <td><input type="text" name="year" size="5" maxlength="4" id="year" />�� 
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
                </select> ��
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
                   
                </select> ��
             </td>
        </tr>
        
        <tr>
            <td align ="center" style="margin-top: 5px; margin-bottom: 5px;">���� �о�</td>
            <td>
                <input type="checkbox" name="hobby" value="��ǻ��" style="margin-top: 5px; margin-bottom: 5px;">��ǻ��
                <input type="checkbox" name="hobby" value="���ͳ�" style="margin-bottom: 5px;">���ͳ�
                <input type="checkbox" name="hobby" value="��ȭ" style="margin-bottom: 5px;">��ȭ
                <input type="checkbox" name="hobby" value="����" style="margin-bottom: 5px;">����
                <input type="checkbox" name="hobby" value="���ǰ���" style="margin-bottom: 5px;">���ǰ���
            </td>
        </tr>
        
        <tr align ="center">
            <td style="margin-top: 5px; margin-bottom: 5px;">�ڱ� �Ұ�</td>
            <td><textarea name="intro" id = "intro" cols="70" rows="8" style="margin-top: 5px; margin-bottom: 5px;"></textarea></td>
        </tr>
        
	    </table><br />
	    <div align ="center">
	        <input type="submit" value="ȸ������" style="border-radius:5px;"/>
	        <input type="reset" value="�ٽ��Է�" style="border-radius:5px;"/>
	    </div>
    </form>
</body>
</html>