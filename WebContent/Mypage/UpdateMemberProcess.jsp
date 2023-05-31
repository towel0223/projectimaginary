<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%
//수정된 정보 받아오기
String updateID = request.getParameter("yoshi_id");
String updatePASS = request.getParameter("yoshi_pw");
String updateNIC = request.getParameter("yoshi_nic");
String updateTEL = request.getParameter("yoshi_tel1")+request.getParameter("yoshi_tel2")+request.getParameter("yoshi_tel3");
memberDAO dao = new memberDAO(application);
boolean updateM = dao.updateMember(updateID, updatePASS, updateNIC, updateTEL);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 process</title>
</head>
<body>
<%
  if (updateM) {
%>
    <script>
      alert("회원 정보가 성공적으로 수정되었습니다.");
      location.href = "MypageForm.jsp";
    </script>
<%
  } else {
%>
    <script>
      alert("회원 정보 수정에 실패했습니다.");
      history.back();
    </script>
<%
  }
%>
</body>
</html>