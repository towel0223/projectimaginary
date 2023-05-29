<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.memberDAO" %>
<%@ page import="member.memberDTO" %>
<%
String userId = (String)session.getAttribute("UserId");
memberDAO dao = new memberDAO(application);
memberDTO dto = dao.getMemberDTO(userId);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script type="text/javascript">
function Check(form){
	var passError = document.getElementById("passError");//비밀번호 에러
	var passError2 = document.getElementById("pass2Error");//비밀번호 확인 에러
	var nicError = document.getElementById("nicError");//닉네임 에러
	var regPass = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^*&~])[a-zA-Z\d!@#$%^*&~]{8,25}$/;//비밀번호 유효성 검사(정규식)
	var regTel1=/^[0-9]{4}$/;//전화번호 앞자리 유효성 검사(정규식)
	var regTel2=/^[0-9]{4}$/;//전화번호 뒷자리 유효성 검사(정규식)
	var check = true;
	//비밀번호 검사
	if(form.yoshi_pw.value==""){
		passError.innerHTML="*비밀번호를 입력하세요!<br>";
		form.yoshi_pw.focus();
		check =  false;
	}else if(form.yoshi_pw2.value==""){
		passError2.innerHTML="*비밀번호 확인을 입력하세요!<br>";
		form.yoshi_pw2.focus();
		check =  false;
	}else if(form.yoshi_pw.value != form.yoshi_pw2.value){
		passError2.innerHTML="*비밀번호가 서로 다릅니다!<br>";
		form.yoshi_pw2.select();
		check =  false;
	}else if(!regPass.test(form.yoshi_pw.value)){
		passError.innerHTML="*비밀번호는 영문 대소문자와 숫자와 특수문자 8자리 이상 입력해야 됩니다!<br>";
		form.yoshi_pw.value="";
		form.yoshi_pw2.value="";
		form.yoshi_pw.focus();
		check =  false;
	}else if(form.yoshi_id.value == form.yoshi_pw.value){
		passError.innerHTML="*아이디와 비밀번호가 같을 수 없습니다!<br>";
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
		nicError.innerHTML="*닉네임을 입력하세요!<br>";
		form.yoshi_nic.focus();
		check =  false;
	}else if(form.yoshi_nic.value.length < 2 || form.yoshi_nic.value.length > 9){
		nicError.innerHTML="*닉네임은 2~8자리로 입력해야 합니다.<br>";
		form.yoshi_nic.focus();
		check =  false;
	}else{
		nicError.innerHTML="";
	}
	//전화번호 검사
	if(!regTel1.test(form.yoshi_tel2.value)){
		telError.innerHTML="*전화번호를 입력하지 않았거나 올바르지 않습니다.<br>";
		check =  false;
	}else if(!regTel2.test(form.yoshi_tel3.value)){
		telError.innerHTML="*전화번호를 입력하지 않았거나 올바르지 않습니다.<br>";
		check =  false;
	}else{
		telError.innerHTML="";
	}
	return check;
}
</script>
</head>
<body>
<form name="yUdate" action="updateProcess.jsp" method="post" onsubmit="return Check(this);">
ID<br/>
<input type="text" name="id" value="<%=dto.getId() %>" readonly="readonly"><br/>
NEW PASSWORD<br/>
<input type="password" name="NEWpass"><br/>
NEW PASSWORD확인<br/>
<input type="password" name="NEWpassCK"><br/>
NAME<br/>
<input type="text" name="name" value="<%=dto.getName() %>" readonly="readonly"><br/>
NEW NICKNAME<br/>
<input type="text" name="NEWnic" value="<%=dto.getNickname() %>"><br/>
NEW TEL<br/>
	<select name="NEWtel1">
		<option value="010">010</option>
		<option value="02">02</option>
		<option value="031">031</option>
		<option value="051">051</option>
	</select>
	<input type="text" name="NEWtel2" size="5" maxlength="4">
	<input type="text" name="NEWtel3" size="5" maxlength="4"><br/>
<input type="submit" value="수정하기">
</form>
</body>
</html>