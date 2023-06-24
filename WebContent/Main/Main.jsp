<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="board.boardDAO" %>
<%@ page import="banner.bannerDTO" %>
<%@ page import="banner.bannerDAO" %>
<%@ page import="song.songDTO" %>
<%@ page import="song.songDAO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Date today = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String formattedDate = dateFormat.format(today);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 플레이리스트, YM</title>
<link rel="stylesheet" href="./Main.css">
</head>
<body>
	<jsp:include page="../Common/Nav.jsp" />
	<% 
	
	bannerDAO dao=new bannerDAO(); 
	List<bannerDTO> dto=dao.getMainBanner();
	

	songDAO songdao=new songDAO(); 
	List<songDTO> songdto=songdao.getMainSong();
	%>
	
	<div id="banner">
	<% 
	for(int i=0; i<dto.size(); i++){
		if(i<2){
		%>
		
		<a href=<%=dto.get(i).getUrl()%>><img alt="행사 배너" src="../images/<%=dto.get(i).getFname()%>"></a>
		<% }}%>
	</div>
	
	<div id="banner2">
	<% 
	for(int i=0; i<dto.size(); i++){
		if(i>=2){%>
		<a href=<%=dto.get(i).getUrl()%>><img alt="행사 배너" src="../images/<%=dto.get(i).getFname()%>"></a>
		<% }}%>
	</div>
	
	<div class="personal_recommend_w">
		<div class="personal_recommend_head">
			<h4>yoshi 추천음악</h4>
			<div class="total_status_data">총 10곡 | <%=formattedDate %></div>
		</div>
		<div class="album_list">
		<% 
			for(int i=0; i<songdto.size(); i++){
				if(i<5){
		%>
			<div class="album_list1">
				<a href="<%=songdto.get(i).getUrl()%>"><img src="../images/<%=songdto.get(i).getPhoto()%>"></a>
				<h4><%=songdto.get(i).getSname()%></h4><h5><%=songdto.get(i).getArtist()%></h5>
			</div>
			<%} }%>
		</div>
		
		<div class="album_list">
		<% 
			for(int i=0; i<songdto.size(); i++){
				if(i>=5){
		%>
			<div class="album_list1">
				<a href="<%=songdto.get(i).getUrl()%>"><img src="../images/<%=songdto.get(i).getPhoto()%>"></a>
				<h4><%=songdto.get(i).getSname()%></h4><h5><%=songdto.get(i).getArtist()%></h5>
			</div>
			<%} }%>
			
		</div>
	</div>
	
	
	<div class="platform">
		<div class="platform_head">
			<h4>인기 플랫폼</h4>
		</div>
		<div class="platform_list">
			<div class="platform_list1">
				<a href="https://www.melon.com/"><img src="../images/Melon.png"></a>
				<h4>Melon</h4>
			</div>
			<div class="platform_list1">
				<a href="https://www.genie.co.kr/"><img src="../images/Genie.png"></a>
				<h4>Genie</h4>
			</div>
			<div class="platform_list1">
				<a href="https://www.music-flo.com/"><img src="../images/Flo.jpg"></a>
				<h4>Flo</h4>
			</div>
			<div class="platform_list1">
				<a href="https://open.spotify.com/"><img src="../images/Spotify.png"></a>
				<h4>Spotify</h4>
			</div>
			<div class="platform_list1">
				<a href="https://soundcloud.com/"><img src="../images/SoundCloud.jpg"></a>
				<h4>SoundCloud</h4>
			</div>
		</div>
	</div>
	
	<jsp:include page="../Common/Footer.jsp" />
	

</body>
</html>