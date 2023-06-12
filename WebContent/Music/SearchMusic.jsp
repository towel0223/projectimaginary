<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "song.songDTO" %>
<%@ page import = "song.songDAO" %>
<%@ page import = "song.chart" %>
<%@ page import = "java.util.List" %>

<%
request.setCharacterEncoding("UTF-8");
String SearchWord = request.getParameter("value");
songDAO dao = new songDAO(application);
List<songDTO> SongList = dao.getSearchList(SearchWord);
dao.close();

	chart song = new chart();
	String[] title = song.title();
	String[] album = song.album();
	String[] artist = song.artist();
	String[] maker = song.maker();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 검색</title>
<link rel="stylesheet" href="./SearchMusic.css">
</head>
<body>
<jsp:include page="../Common/Nav.jsp" />
    <table border="1" width="90%">
        <tr>
            <th width="10%">번호</th>
            <th width="30%">제목</th>
            <th width="20%">앨범</th>
            <th width="20%">아티스트</th>
            <th width="20%">제작사</th>
        </tr>
        <% for (int i=0; i<100; i++) {
        		if(title[i] == SearchWord || album[i] == SearchWord || artist[i] == SearchWord || maker[i] == SearchWord){%>
            <tr>
                <td><%= i+1 %></td>
                <td><%= title[i] %></td>
                <td><%= album[i] %></td>
                <td><%= artist[i] %></td>
                <td><%= maker[i] %></td>
            </tr>
        <% }
        } %>
    </table>
    <jsp:include page="../Common/Footer.jsp" />
</body>
</html>