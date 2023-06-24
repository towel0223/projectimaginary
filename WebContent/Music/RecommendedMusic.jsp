<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="spotify.spotifyapi" %>
<%@ page import="java.util.List" %>
<%@ page import="song.songDTO" %>
<%@ page import="com.neovisionaries.i18n.CountryCode" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Date today = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String formattedDate = dateFormat.format(today);
	List<songDTO> dto=spotifyapi.getTodaySong();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 추천음악</title>
<link rel="stylesheet" href="./RecommendedMusic.css">
</head>
<body>
<jsp:include page="../Common/Nav.jsp" />
<h2>추천음악</h2>

	<div class="personal_recommend_w">
		<div class="personal_recommend_head">
			<h4>오늘의 음악</h4>
			<div class="total_status_data"><%=formattedDate %></div>
		</div>
		<div class="album_list">
			<% for(int i=0; i<5; i++){ %>
			<div class="album_list1">
				<a><img src=<%=dto.get(i).getPhoto()%>></a>
				<h4><%=dto.get(i).getSname()%></h4><h5><%=dto.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
		</div>
		
		<div class="album_list">
		
			<% for(int i=5; i<10; i++){ %>
			<div class="album_list1">
				<a><img src=<%=dto.get(i).getPhoto()%>></a>
				<h4><%=dto.get(i).getSname()%></h4><h5><%=dto.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
		</div>
	</div>
	
	<%List<songDTO> jpop=spotifyapi.getsong("year:2023", CountryCode.JP,10);
	 List<songDTO> pop=spotifyapi.getsong("year:2023", CountryCode.US,30);
	 List<songDTO> kpop=spotifyapi.getsong("year:2023", CountryCode.KR,20);
		
	%>
	
	<div class="personal_recommend_w2">
		<div class="personal_recommend_head2">
			<h4>J-POP</h4>
		</div>
		<div class="album_list3">
		<% for(int i=0; i<5; i++){ %>
			<div class="album_list4">
				<a><img src=<%=jpop.get(i).getPhoto()%>></a>
				<h4><%=jpop.get(i).getSname()%></h4><h5><%=jpop.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
		</div>
		
		<div class="album_list3">
			<% for(int i=5; i<10; i++){ %>
			<div class="album_list4">
				<a><img src=<%=jpop.get(i).getPhoto()%>></a>
				<h4><%=jpop.get(i).getSname()%></h4><h5><%=jpop.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
			</div>
		</div>
	
	
	
	<div class="personal_recommend_w3">
		<div class="personal_recommend_head3">
			<h4>POP</h4>
		</div>
		<div class="album_list5">
			<% for(int i=20; i<25; i++){ %>
			<div class="album_list4">
				<a><img src=<%=pop.get(i).getPhoto()%>></a>
				<h4><%=pop.get(i).getSname()%></h4><h5><%=pop.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
		</div>
	
		<div class="album_list5">
			<% for(int i=25; i<30; i++){ %>
			<div class="album_list4">
				<a><img src=<%=pop.get(i).getPhoto()%>></a>
				<h4><%=pop.get(i).getSname()%></h4><h5><%=pop.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
		</div>
	</div>
	
	
	<div class="personal_recommend_w4">
		<div class="personal_recommend_head4">
		<h4>한국인이 많이듣는 POP</h4>
		</div>
		<div class="album_list7">
			
			<% for(int i=10; i<15; i++){ %>
			<div class="album_list4">
				<a><img src=<%=kpop.get(i).getPhoto()%>></a>
				<h4><%=kpop.get(i).getSname()%></h4><h5><%=kpop.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
			</div>
		
		
			<div class="album_list7">
				<% for(int i=15; i<20; i++){ %>
			<div class="album_list4">
				<a><img src=<%=kpop.get(i).getPhoto()%>></a>
				<h4><%=kpop.get(i).getSname()%></h4><h5><%=kpop.get(i).getArtist()%></h5>
			</div>
			
			<%} %>
		</div>
	</div>
	<jsp:include page="../Common/Footer.jsp" />
</body>
</html>