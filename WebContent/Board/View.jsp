<%@ page import="board.boardDAO" %>
<%@ page import="board.boardDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));

boardDAO dao = new boardDAO(application);
dao.updateVisitCount(num);
boardDTO dto = dao.selectView(num);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판</title>
<script type="text/javascript">
	function deletePost() {
		var confirmed = confirm("정말로 삭제하시겠습니까?");
		
		if(confirmed) {
			var form = document.writeFrm;
			form.method = "post";
			form.action = "DeleteProcess.jsp";
			form.submit();
		}
	}
</script>
</head>
<body>
<jsp:include page="../Common/Nav.jsp" />

<form name="writeFrm">
     <input type="hidden" name="num" value="<%=dto.getNum() %>" />  <!-- 공통 링크 -->
     <table border="1" width="90%">
     	<tr>
     		<td>번호</td>
     		<td><%=dto.getNum() %></td>
     		<td>작성자</td>
     		<td><%=dto.getId() %></td>
     	</tr>
     	<tr>
     		<td>작성일</td>
     		<td><%=dto.getPostdate() %></td>
     		<td>조회수</td>
     		<td><%=dto.getVisitcount() %></td>
     	</tr>
     	<tr>
     		<td>제목</td>
     		<td colspan="3"><%=dto.getTitle() %></td>
     	</tr>
     	<tr>
     		<td>내용</td>
     		<td colspan="3" height="100"><%=dto.getContent().replace("\r\n", "<br/>") %></td>
     	</tr>
     	
     	<tr>
     		<td colspan="4" align="center">
     			<%
     			if(session.getAttribute("UserId") != null && session.getAttribute("UserId").toString().equals(dto.getId())) {
     			%>
     			<button type="button" onclick="location.href='Edit.jsp?num=<%=dto.getNum() %>';">수정하기</button>
     			<button type="button" onclick="deletePost();">삭제하기</button>
     			<%
     			}
     			%>
     			<button type="button" onclick="location.href='FreeBoardList.jsp'">목록 보기</button>
     		</td>
     	</tr>
     </table>
</form>
</body>
</html>