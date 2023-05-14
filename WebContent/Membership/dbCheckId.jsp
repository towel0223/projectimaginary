<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
</head>
<body>
<%
memberDAO dao = new memberDAO(application);
String yId = request.getParameter("yoshi_id");
boolean result = dao.checkId(yId);
%>
</body>
</html>