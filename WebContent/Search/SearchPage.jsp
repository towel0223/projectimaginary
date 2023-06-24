<%@ page import="board.boardDTO" %>
<%@ page import="board.boardDAO" %>
<%@ page import="song.songDTO" %>
<%@ page import="song.songDAO" %>
<%@ page import="notice.noticeDTO" %>
<%@ page import="notice.noticeDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통합검색</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
String SearchWord = request.getParameter("value");
boardDAO boardDAO= new boardDAO(application);
List<boardDTO> board=boardDAO.selectList(SearchWord);
%>

<div id='logo'>
		<a href="../Main/Main.jsp" > 
			<img src="../images/logo.png">
		</a>
</div>
<div>
<h2>자유게시판</h2>
<hr>
<%
for(boardDTO dto: board)
{%>
	<%=dto.getTitle()%>
	<%=dto.getContent()%>
	<%=dto.getId()%>
	<%=dto.getPostdate()%>
	<%=dto.getLikes()%>
<% }
%>
</div>

<div>
<h2>인기차트</h2>
<hr>

</div>
<div>
<h2>공지사항</h2>
<hr>

</div>



</body>
</html>