<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader, java.io.FileReader" %>
<%@ page import="java.io.InputStreamReader, java.io.FileInputStream" %>
<%@ page import="song.chart" %>
<%@ page import="song.songDTO" %>
<%@ page import="spotify.spotifyapi" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인기차트</title>
<link rel="stylesheet" href="./Chart.css">
</head>
<body>
<% 
spotifyapi spotify=new spotifyapi();
List<songDTO> dto=spotify.getTrack_Sync(); %>
	<jsp:include page="../Common/Nav.jsp" />
	<h2>인기차트</h2>
	
	<!-- 검색폼 --> 
    <form method="get">  
            <select name="searchField"> 
                <option value="title">제목</option> 
                <option value="content">내용</option>
            </select>
            <input type="text" name="searchWord" />
            <input type="submit" value="검색하기" />
     </form>
 	
	<table border="1" width="90%">
        <!-- 각 칼럼의 이름 --> 
        <tr>
            <th width="10%">순위</th>
            <th width="30%">제목</th>
            <th width="30%">앨범</th>
            <th width="30%">아티스트</th>
        </tr>
        <!-- 목록의 내용 --> 
		<% 
 				for(songDTO song: dto){
 		%>
	    	<tr align="center">
		        <td><%=song.getSnum() %></td>
		        <td align="center"><%= song.getSname() %></td>
		        <td align="center"><img src=<%=song.getPhoto()%>></td>
		        <td align="center"><%= song.getArtist() %></td>
		    </tr>
	    <%
		}
		   
		%>
		        
	</table>

	<jsp:include page="../Common/Footer.jsp" />
</body>
</html>