<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요시뮤직 로그인 폼</title>
<link rel="stylesheet" href="yLoginForm.css">
</head>
<script>
    function validateForm(form) {
        if (!form.user_id.value) {
            alert("아이디를 입력하세요.");
            return false;
        }
        if (form.user_pw.value == "") {
            alert("패스워드를 입력하세요.");
            return false;
        }
    }
</script>
<body>
<div>
<h2>Login</h2>

<span style="color: red; font-size: 1.2em;"> 
        <%= request.getAttribute("LoginErrMsg") == null ?
                "" : request.getAttribute("LoginErrMsg") %>
    </span>
    <%
    if (session.getAttribute("UserId") == null) {
    %>
    
    <form action="yLoginProcess.jsp" method="post" name="loginFrm"
        onsubmit="return validateForm(this);">
        <span>아이디 : <input type="text" name="user_id" /></span>
        <span>패스워드 : <input type="password" name="user_pw" /></span>
        <input type="submit" value="로그인하기" />
    </form>
    <!-- <form action="yMembership.jsp" method="post">
    	<input type="submit" value="회원가입하기" />
    </form> 
    <%
    } else {
    %>
        <%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다.<br />
        <a href="yLogout.jsp">[로그아웃]</a>
    <%
    }
    %> -->
</div>
</body>
</html>