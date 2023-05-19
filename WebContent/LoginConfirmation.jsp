<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.JSFunction" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login confirmation</title>
</head>
<body>
<%
if(session.getAttribute("UserId") == null){//로그인 안된 상태
	JSFunction.alertLocation("로그인후 이용바랍니다.", "./Login/yLoginForm.jsp", out);
}else{//로그인 된 상태
	response.sendRedirect("./MyPage/MyPage.jsp");
}
%>
</body>
</html>