<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요시뮤직 로그인 폼</title>
<link rel="stylesheet" href="yLoginForm.css">
</head>
<body>

<div id='logo'>
		<a href="../Main/Main.jsp" > 
			<img src="../images/logo.png">
		</a>
	</div>	
	<div id="loginform">	
<h2 class='yoshifont' id='yoshilogin'>로그인</h2>

<span style="color: red; font-size: 1.2em;"> 
        <%= request.getAttribute("LoginErrMsg") == null ?
                "" : request.getAttribute("LoginErrMsg") %>
    </span>
    
    
    <form action="yLoginProcess.jsp" method="post" name="loginFrm"
        onsubmit="return validateForm(this);">
        <input type="text" name="user_id" placeholder="아이디" class='yoshifont' />
        <input type="password" name="user_pw" placeholder="패스워드" class='yoshifont' />
       <div id="login">
        <input type="submit" value="로그인" class='yoshifont' id="button" />
        <input id="memberShip" type="button" value="회원가입" /> 
    </div>
    </form>
    	 
</div>
<script>
	var signupButton=document.getElementById("memberShip");
	signupButton.addEventListener("click",function(){window.location.href="../Membership/yMembership.jsp";});
    function validateForm(form) {
        if (!form.user_id.value) {
            alert("아이디를 입력하세요.");
            return false;}
        if (form.user_pw.value == "") {
            alert("패스워드를 입력하세요.");
            return false;}
    }
</script>
</body>
</html>