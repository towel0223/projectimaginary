<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요시뮤직 로그아웃</title>
</head>
<body>
<%
	// 모든 속성 한꺼번에 삭제
	session.invalidate();
	
	// 속성 삭제 후 페이지 이동
	response.sendRedirect("../Main.jsp");
%>
</body>
</html>