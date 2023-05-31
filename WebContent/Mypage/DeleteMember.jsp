<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%
String id = (String)session.getAttribute("UserId");
memberDAO dao = new memberDAO(application);
int deleteMember = dao.deleteMember(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴</title>
</head>
<body>
<%
if(deleteMember > 0){
	session.invalidate();
%>
<script>
alert("탈퇴가 완료되었습니다.");
location.href = "../Main/Main.jsp";
</script>
<%
}else{
%>
    <script>
      alert("탈퇴에 실패했습니다.");
      history.back();
    </script>
<%
  }
%>
</body>
</html>