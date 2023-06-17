<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./Management.css">
<meta charset="UTF-8">
<title>관리자 권한 부여</title>
</head>
<body>
<%@ include file="../Board/IsLoggedIn.jsp" %>
  

<div>
<ul>
	<li><a href="ManageMainBannerEdit.jsp">배너수정</a></li>
	<li><a href="RecommendedMusicEdit.jsp">추천음악수정</a></li>
	


</ul>





</div>

</body>
</html>