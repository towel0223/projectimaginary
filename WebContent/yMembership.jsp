<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요시 회원가입</title>
</head>
<body>
<form action="yMembershipProcess.jsp" method="post">
	아이디<br/>
	<input type="text" name="yoshi_id"><br/>
	비밀번호<br/>
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