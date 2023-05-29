<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.memberDAO" %>
<%@ page import="member.memberDTO" %>
<%
String userId = (String)session.getAttribute("UserId");
memberDAO dao = new memberDAO(application);
memberDTO dto = dao.getMemberDTO(userId);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="../Main.css">
<script type="text/javascript">
	function DEL(userId){
		if(confirm("정말 탈퇴하시겠습니까?")) {
			location.href = "Delete.jsp?id=" + userId;
		}
		return false;
	}
</script>
</head>
<body>
<jsp:include page="../Top.jsp"/>
<h2>내정보</h2>
ID : <%=session.getAttribute("UserId") %><br/>
NAME : <%=session.getAttribute("UserName") %><br/>
NicName : <%=session.getAttribute("NicName") %><br/>
TEL : <%=session.getAttribute("Tel") %>
<h1>회원정보 관리</h1>
<input type="button" value="회원정보 수정" onclick="location.href='Update.jsp'" />
<input type="button" value="회원 탈퇴" onclick="DEL('<%=dto.getId() %>')" />
</body>
</html>