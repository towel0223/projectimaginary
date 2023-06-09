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
            <th width="30%">앨범</th>
            <th width="30%">제목</th>
            <th width="30%">아티스트</th>
        </tr>

        <% for (songDTO Song : SongList) { //리스트 출력%> 
        	<tr>
					<td><%=Song.getSnum() %></td>
					
					<td><%=Song.getStitle() %></td>
					<td><%=Song.getSname() %></td>
				
			</tr>
		
      <%} %>
    </table>
    <jsp:include page="../Common/Footer.jsp" />
</body>
</html>