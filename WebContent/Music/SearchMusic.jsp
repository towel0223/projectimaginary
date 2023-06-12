<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "song.songDTO" %>
<%@ page import = "song.songDAO" %>
<%@ page import = "java.util.List" %>

<%
request.setCharacterEncoding("UTF-8");
String SearchWord = request.getParameter("value");
songDAO dao = new songDAO(application);
List<songDTO> SongList = dao.getSearchList(SearchWord);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 검색</title>
</head>
<body>
    <table>
        <tr>
            <th>번호</th>
            <th>앨범</th>
            <th>제목</th>
            <th>가수</th>
            <th>발매일</th>
        </tr>
        <% for (songDTO song : SongList) { //리스트 출력%> 
            <tr>
                <td><%= song.getSnum() %></td>
                <td><img src="../images/<%=song.getSphoto() %>" alt="사진" width="70px" height="70px"/></td>
                <td><%= song.getStitle() %></td>
                <td><%= song.getSname() %></td>
                <td><%= song.getSdate() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>