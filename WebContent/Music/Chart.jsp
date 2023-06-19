<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader, java.io.FileReader" %>
<%@ page import="java.io.InputStreamReader, java.io.FileInputStream" %>
<%@ page import="song.chart" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인기차트</title>
<link rel="stylesheet" href="./Chart.css">
</head>
<body>
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
            <th width="5%">순위</th>
            <th width="30%">제목</th>
            <th width="20%">앨범</th>
            <th width="20%">아티스트</th>
            <th width="20%">제작사</th>
            <th width="5%">재생하기</th>
        </tr>
        <!-- 목록의 내용 --> 
		<%
 			chart song = new chart();
 			String[] title = song.title();
 			String[] album = song.album();
 			String[] artist = song.artist();
 			String[] maker = song.maker();
 				
 			for(int i=0; i<100; i++){
 		%>
	    	<tr align="center">
		        <td><%=i+1 %></td>
		        <td align="center"><%= title[i] %></td>
		        <td align="center"><%= album[i] %></td> 
		        <td align="center"><%= artist[i] %></td>
		        <td align="center"><%= maker[i] %></td>
		        <td align="center"><img class="play" src="../images/play.png"></td>
		    </tr>
	    <%
			}
		   
		%>
		        
	</table>
	<jsp:include page="../Mp3Player/MusicPlayer.jsp" />
	<jsp:include page="../Common/Footer.jsp" />
</body>
</html>