<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%
String SessionId = (String)session.getAttribute("UserId");
memberDAO dao = new memberDAO(application);
memberDTO dto = dao.getMemberDTO(SessionId);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script type="text/javascript">
function checkAll(form){
	var passError = document.getElementById("passError");//비밀번호 에러
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
<h2>회원 정보 수정</h2>
<form action="UpdateMemberProcess.jsp" method="post" onsubmit="return checkAll(this);">
	ID : <input type="text" name="yoshi_id" value="<%=dto.getId() %>" readonly="readonly"><br> <!-- 읽기만 가능 -->
	PASSWORD : <input type="password" name="yoshi_pw" placeholder="비밀번호를 입력하시오."><br>
	<span id="passError" style="color:red"></span>
	NAME : <input type="text" name="yoshi_name" value="<%=dto.getName() %>" readonly="readonly"><br> <!-- 읽기만 가능 -->
	NICKNAME : <input type="text" name="yoshi_nic" value="<%=dto.getNickname() %>"><br>
	<span id="nicError" style="color:red"></span>
	TEL : <select name="yoshi_tel1" id="tell">
				<option value="010">010</option>
				<option value="02">02</option>
				<option value="031">031</option>
				<option value="051">051</option>
			</select>
			<input type="text" name="yoshi_tel2" size="5" maxlength="4" placeholder="0000">
			<input type="text" name="yoshi_tel3" size="5" maxlength="4" placeholder="0000"><br>
			<span id="telError" style="color:red"></span>
	<input type="submit" value="회원수정">
</form>
<jsp:include page="../Common/Footer.jsp" />
</body>
</html>