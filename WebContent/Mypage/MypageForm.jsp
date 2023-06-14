<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%@ page import = "utils.JSFunction" %>
<jsp:include page = "../Board/IsLoggedIn.jsp" /> <!-- 로그인 확인 -->
<%
String SessionId = (String)session.getAttribute("UserId");
memberDAO dao = new memberDAO(application);
memberDTO dto = dao.getMemberDTO(SessionId);
dao.close();
%>
<link rel="stylesheet" href="../Common/Nav.css">
<link rel="stylesheet" href="Mypage.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<link rel="stylesheet" href="./MypageForm.css">
</head>
<script>
  function delCheck() {
    if (confirm("정말 탈퇴하시겠습니까?")) {
      window.location.href = "DeleteMember.jsp";
    } else {
      return false;
    }
  }
</script>
<body>
<jsp:include page="../Common/Nav.jsp" />

<div class = "title">
		<h2>내정보</h2>
</div>
<div class = "container">
<div class="info">
  <label>ID</label><br>
  <span><%=dto.getId() %></span>
</div>

<div class="info">
  <label>NAME</label><br>
  <span><%=dto.getName() %></span>
</div>

<div class="info">
  <label>NICKNAME</label><br>
  <span><%=dto.getNickname() %></span>
</div>

<div class="info">
  <label>TEL</label><br>
  <span><%=dto.getTel() %></span>
</div>

<div class="button-group">
  <input type="button" value="탈퇴" class="btn" onClick="delCheck()">
  <input type="button" value="회원정보 수정" class="btn" onclick="location='UpdateMember.jsp'">
</div>
</div>

</body>
</html>
