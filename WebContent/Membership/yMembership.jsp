	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%
memberDAO dao = new memberDAO(application);
String yId = request.getParameter("yoshi_id");
boolean result = dao.checkId(yId);
%>
<!DOCTYPE html>
<html>
<head>
    <style>
        .error {
            color: red;
        }
    </style>

<meta charset="UTF-8">
<title>요시 회원가입</title>
<script type="text/javascript">

    


function checkAll(form){
	if (form.yoshi_id.length >= 8) {
        errorSpan.style.display = "none";
    } else {
        errorSpan.style.display = "inline";
    }
	if(form.yoshi_id.value==""){
		alert("아이디를 입력하세요!");
		form.yoshi_id.focus();
		return false;
	}
	var regId = /^[a-zA-z0-9]{4,12}$/;
	if(!regId.test(form.yoshi_id.value)){
		alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
		form.yoshi_id.value="";
		form.yoshi_id.focus();
		return false;
	}
	
	if(form.yoshi_pw.value==""){
		alert("비밀번호를 입력하세요!");
		form.yoshi_pw.focus();
		return false;
	}
	if(form.yoshi_pw2.value==""){
		alert("비밀번호 확인을 입력하세요!");
		form.yoshi_pw2.focus();
		return false;
	}
	if(form.yoshi_pw.value != form.yoshi_pw2.value){
		alert("비밀번호가 서로 다릅니다!");
		form.yoshi_pw2.select();
		return false;
	}
	var regPass = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^*&~])[a-zA-Z\d!@#$%^*&~]{8,25}$/;
	if(!regPass.test(form.yoshi_pw.value)){
		alert("비밀번호는 영문 대소문자와 숫자와 특수문자 8자리 이상 입력해야 됩니다!");
		form.yoshi_pw.value="";
		form.yoshi_pw2.value="";
		form.yoshi_pw.focus();
		return false;
	}
	
	if(form.yoshi_id.value == form.yoshi_pw.value){
		alert("아이디와 비밀번호가 같을 수 없습니다!");
		yform.yoshi_pw.value="";
		yform.yoshi_pw2.value="";
		yform.yoshi_pw2.focus();
		return false;
	}
	if(form.yoshi_nic.value==""){
		alert("닉네임을 입력하세요!");
		form.yoshi_nic.focus();
		return false;
	}
	if(form.yoshi_nic.value.length < 2 || form.yoshi_nic.value.length > 9){
		alert("닉네임은 2~8자리로 입력해야 합니다.");
		form.yoshi_nic.focus();
		return false;
	}
	if(form.yoshi_name.value==""){
		alert("이름을 입력하세요!");
		form.yoshi_name.focus();
		return false;
	}
	var regTel1=/^[0-9]{4}$/;
	if(!regTel1.test(form.yoshi_tel2.value)){
		alert("전화번호를 입력하지 않았거나 올바르지 않습니다.");
		return false;
	}
	var regTel2=/^[0-9]{4}$/;
	if(!regTel2.test(form.yoshi_tel3.value)){
		alert("전화번호를 입력하지 않았거나 올바르지 않습니다.");
		return false;
	}
}
function dbcheckId(form, result) {
	if(result){
		alert("중복입니다. 아이디를 다시 입력해 주세요.");
		form.yoshi_id.value="";
		form.yoshi_id.focus();
	}else{
		alert("아이디를 사용할 수 있습니다.");
	}
	return false;
}
</script>
</head>
<body>
<form  name="yform" action="yMembershipProcess.jsp" method="post" onsubmit="return checkAll(this)">
	아이디<br/>
	<input type="text" name="yoshi_id"> <input type="button" onClick="return dbcheckId(this.form, <%= result %>)" value="중복확인"><br/>
	
	<span id="usernameError" class="error">아이디는 8글자 이상 입력해주세요.</span>
	
	<br/>비밀번호<br/>
	<input type="password" name="yoshi_pw"><br/>
	비밀번호 재확인<br/>
	<input type="password" name="yoshi_pw2"><br/>
	닉네임<br/>
	<input type="text" name="yoshi_nic"><br/>
	이름<br/>
	<input type="text" name="yoshi_name"><br/>
	전화번호<br/>
	<select name="yoshi_tel1">
		<option value="010">010</option>
		<option value="02">02</option>
		<option value="031">031</option>
		<option value="051">051</option>
	</select>
	<input type="text" name="yoshi_tel2" size="5" maxlength="4">
	<input type="text" name="yoshi_tel3" size="5" maxlength="4"><br/>
	<input type="submit" value="회원가입">
</form>
</body>
</html>