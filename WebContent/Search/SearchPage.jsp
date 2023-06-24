<%@ page import="board.boardDTO" %>
<%@ page import="board.boardDAO" %>
<%@ page import="song.songDTO" %>
<%@ page import="song.songDAO" %>
<%@ page import="notice.noticeDTO" %>
<%@ page import="notice.noticeDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="spotify.spotifyapi" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통합검색</title>
<link rel="stylesheet" href="./SearchPage.css">
</head>
<body>

<% 
request.setCharacterEncoding("UTF-8");
String SearchWord = request.getParameter("value");
boardDAO boardDAO= new boardDAO(application);
noticeDAO noticeDAO=new noticeDAO(application);
List<noticeDTO> board2=noticeDAO.selectList(SearchWord);
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
<div>
<table>
<%
for(boardDTO dto: board)

{%>

	<tr><th width="20%"><a href="../Board/View.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle()%></a></th>
	<td width="20%"><%=dto.getContent()%></td>
	<td width="20%"><%=dto.getId()%></td>
	<td width="20%"><%=dto.getPostdate()%></td>
	<td width="20%"><%=dto.getLikes()%></td>
	</tr>

<% }
%>
</table>
</div>
</div>

<div>
<h2>인기차트</h2>
<hr>
<div id="song">
<table>
<% List<songDTO> song=spotifyapi.getsong(SearchWord);

for(songDTO dto: song){
%>
<tr><td><img src=<%=dto.getPhoto()%>></td>
<td><%= dto.getSname()%></td>
<td><%= dto.getArtist()%></td>
</tr>
<%} %>
</table>
</div>
</div>
<div>
<h2>공지사항</h2>
<hr>
<div>
<table>
<%
for(noticeDTO dto: board2)
{%>
	<tr><th width="20%"><a href="../Notice/NoticeView.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle()%></a></th>
	<td width="20%"><%=dto.getContent()%></td>
	<td width="20%"><%=dto.getId()%></td>
	<td width="20%"><%=dto.getPostdate()%></td>
	</tr>
<% }
%>
</table>
</div>
</div>



</body>
</html>