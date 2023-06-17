<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요시 회원가입</title>
<script type="text/javascript">
function checkAll(form){
	var idError = document.getElementById("idError");//아이디 에러
	var passError = document.getElementById("passError");//비밀번호 에러
	var passError2 = document.getElementById("pass2Error");//비밀번호 확인 에러
	var nicError = document.getElementById("nicError");//닉네임 에러
	var nameError = document.getElementById("nameError");//이름 에러
	var regId = /^[a-zA-z0-9]{4,12}$/;//아이디 유효성 검사(정규식)
	var regPass = /^(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^*&~])[a-zA-Z\d!@#$%^*&~]{8,25}$/;//비밀번호 유효성 검사(정규식)
	var regTel1=/^[0-9]{4}$/;//전화번호 앞자리 유효성 검사(정규식)
	var regTel2=/^[0-9]{4}$/;//전화번호 뒷자리 유효성 검사(정규식)
	var check = true;
	//아이디 검사
	if(form.yoshi_id.value==""){
		idError.innerHTML = "아이디를 입력하세요!<br>";
		form.yoshi_id.focus();
		check =  false;
	}else if(!regId.test(form.yoshi_id.value)){
		idError.innerHTML="아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!<br>";
		form.yoshi_id.value="";
		form.yoshi_id.focus();
		check =  false;
	}else{
		idError.innerHTML="";
	}
	//비밀번호 검사
	if(form.yoshi_pw.value==""){
		passError.innerHTML="비밀번호를 입력하세요!<br>";
		form.yoshi_pw.focus();
		check =  false;
	}else if(form.yoshi_pw2.value==""){
		passError2.innerHTML="비밀번호 확인을 입력하세요!<br>";
		form.yoshi_pw2.focus();
		check =  false;
	}else if(form.yoshi_pw.value != form.yoshi_pw2.value){
		passError2.innerHTML="비밀번호가 서로 다릅니다!<br>";
		form.yoshi_pw2.select();
		check =  false;
	}else if(!regPass.test(form.yoshi_pw.value)){
		passError.innerHTML="비밀번호는 영문 대소문자와 숫자와 특수문자 8자리 이상 입력해야 됩니다!<br>";
		form.yoshi_pw.value="";
		form.yoshi_pw2.value="";
		form.yoshi_pw.focus();
		check =  false;
	}else if(form.yoshi_id.value == form.yoshi_pw.value){
		passError.innerHTML="아이디와 비밀번호가 같을 수 없습니다!<br>";
		yform.yoshi_pw.value="";
		yform.yoshi_pw2.value="";
		yform.yoshi_pw2.focus();
		check =  false;
	}else{
		passError.innerHTML="";
		passError2.innerHTML="";
	}
	//닉네임 검사
	if(form.yoshi_nic.value==""){
		nicError.innerHTML="닉네임을 입력하세요!<br>";
		form.yoshi_nic.focus();
		check =  false;
	}else if(form.yoshi_nic.value.length < 2 || form.yoshi_nic.value.length > 9){
		nicError.innerHTML="닉네임은 2~8자리로 입력해야 합니다.<br>";
		form.yoshi_nic.focus();
		check =  false;
	}else{
		nicError.innerHTML="";
	}
	//이름 검사
	if(form.yoshi_name.value==""){
		nameError.innerHTML="이름을 입력하세요!<br>";
		form.yoshi_name.focus();
		check =  false;
	}else{
		nameError.innerHTML="";
	}
	//전화번호 검사
	if(!regTel1.test(form.yoshi_tel2.value)){
		telError.innerHTML="전화번호를 입력하지 않았거나 올바르지 않습니다.<br>";
		check =  false;
	}else if(!regTel2.test(form.yoshi_tel3.value)){
		telError.innerHTML="전화번호를 입력하지 않았거나 올바르지 않습니다.<br>";
		check =  false;
	}else{
		telError.innerHTML="";
	}
	return check;
}
</script>
</head>
<link rel="stylesheet" href="yMembership.css">
<body>
	<div id="logo">
		<a href="../Main/Main.jsp" > 
			<img src="../images/logo.png">
		</a>
	</div>	
	<form  id ="join" name="yform" action="yMembershipProcess.jsp" method="post" onsubmit="return checkAll(this);">
		
		<div>		
			<input type="text" name="yoshi_id" id="yoshi" placeholder="아이디"> 
			<span id="idError" class="error" style="color:red"></span>
		</div>
		<div>		
			
			<input type="password" name="yoshi_pw" placeholder="비밀번호">
			<span id="passError" class="error" style="color:red"></span>
		</div>
		<div>
			<input type="password" name="yoshi_pw2" placeholder="비밀번호 확인">
			<span id="pass2Error" class="error" style="color:red"></span>
		</div>
		<div>
			<input type="text" name="yoshi_nic" placeholder="닉네임">
			<span id="nicError" class="error" style="color:red"></span>
		</div>
		<div>	
			<input type="text" name="yoshi_name" placeholder="이름">
			<span id="nameError" class="error" style="color:red"></span>
		</div>
		<div>
		<div id="tell_title">
			<select name="yoshi_tel1" id="tell" class="tellme">
				<option value="010">010</option>
				<option value="02">02</option>
				<option value="031">031</option>
				<option value="051">051</option>
			</select>
			<input type="text" name="yoshi_tel2" class="tellme" size="5" maxlength="4" placeholder="0000" id="">
			<input type="text" name="yoshi_tel3" class="tellme" size="5" maxlength="4" placeholder="0000">
			</div>
			
			<span class="error" id="telError" style="color:red"></span>
		</div>
		<div>
		<input id="but" type="submit" value="회원가입">
		</div>
	</form>
		
		

</body>
</html>