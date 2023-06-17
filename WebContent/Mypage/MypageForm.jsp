<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.memberDAO" %>
<%@ page import = "member.memberDTO" %>
<%@ page import = "utils.JSFunction" %>
<jsp:include page = "../Board/IsLoggedIn.jsp" /> <!-- 로그인 확인 -->
<%
String SessionId = (String)session.getAttribute("UserId");
String SessionPwd = (String)session.getAttribute("UserPw");
memberDAO dao = new memberDAO(application);
memberDTO dto = dao.getMemberDTO(SessionId, SessionPwd);
dao.close();
%>
<link rel="stylesheet" href="../Common/Nav.css">
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
<div class="container">
  <h2>내정보</h2>
  <table>
    <tr class="info">
      <td><label>ID:</label></td>
      <td><span><%=dto.getId() %></span></td>
    </tr>
    <tr class="info">
      <td><label>NAME:</label></td>
      <td><span><%=dto.getName() %></span></td>
    </tr>
    <tr class="info">
      <td><label>NICKNAME:</label></td>
      <td><span><%=dto.getNickname() %></span></td>
    </tr>
    <tr class="info">
      <td><label>TEL:</label></td>
      <td><span><%=dto.getTel() %></span></td>
    </tr>
  </table>
  <input type="button" value="탈퇴" onclick="delCheck()" class="del-btn">
  <input type="button" value="회원정보 수정" onclick="location='UpdateMember.jsp'">
</div>
<jsp:include page="../Common/Footer.jsp" />
</body>
</html>