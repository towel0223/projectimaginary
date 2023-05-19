<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.memberDAO" %>
<%@ page import="member.memberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="../Main.css">
</head>
<body>
<jsp:include page="../Top.jsp"/>
<h2>내정보</h2>
ID : <%=session.getAttribute("UserId") %><br/>
NAME : <%=session.getAttribute("UserName") %><br/>
NicName : <%=session.getAttribute("NicName") %><br/>
TEL : <%=session.getAttribute("Tel") %>
<h1>회원정보 관리</h1>
회원정보 수정
비밀번호 수정
회원 탈퇴
</body>
</html>