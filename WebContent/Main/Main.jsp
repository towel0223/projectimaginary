<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="board.boardDAO" %>
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
	
	<div id="banner">
		<a href="https://youtu.be/AQEMCVrT6sc"><img alt="행사 배너" src="../images/행사 배너.jpg"></a>
		<a href="https://linktr.ee/hpf2023?src=hp"><img alt="행사 배너" src="../images/행사 배너2.jpg"></a>
	</div>
	
	<div id="banner2">
		<a href="https://www.youtube.com/@DingoMusic"><img alt="행사 배너" src="../images/행사 배너3.png"></a>
		<a href="https://youtu.be/NZmkrc3h4kk"><img alt="행사 배너" src="../images/행사 배너4.jpg"></a>
		<a href="http://waterbombfestival.com/"><img alt="행사 배너" src="../images/행사 배너5.jpg"></a>
		<a href="https://www.youtube.com/@daeguhiphop"><img alt="행사 배너" src="../images/행사 배너6.jpg"></a>
	</div>
	
	<div class="personal_recommend_w">
		<div class="personal_recommend_head">
			<h4>오늘의 음악</h4>
			<div class="total_status_data">총 10곡 | <%=formattedDate %></div>
		</div>
		<div class="album_list">
			<div class="album_list1">
				<a hr  ef="https://youtu.be/7HDeem-JaSY"><img src="../images/퀸카.jpg"></a>
				<h4>퀸카</h4><h5>(여자)아이들</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/6ZUIwj3FgUY"><img src="../images/아이앰.jpg"></a>
				<h4>I AM</h4><h5>IVE (아이브)</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/YudHcBIxlYw"><img src="../images/꽃.jpg"></a>
				<h4>꽃</h4><h5>지수 (JISOO)</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/BBdC1rl5sKY"><img src="../images/사건의 지평선.jpg"></a>
				<h4>사건의 지평선</h4><h5>윤하 (YOUNHA)</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/mBXBOLG06Wc"><img src="../images/파이팅해야지.jpg"></a>
				<h4>파이팅 해야지</h4><h5>부석순 (SEVENTEEN)</h5>
			</div>
		</div>
		
		<div class="album_list">
			<div class="album_list1">
				<a href="https://youtu.be/Os_heh8vPfs"><img src="../images/spicy.jpg"></a>
				<h4>Spicy</h4><h5>aespa</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/dZs_cLHfnNA"><img src="../images/이브.jpg"></a>
				<h4>이브, 프시케 그리고 ...</h4><h5>LE SSERAFIM (르세라핌)</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/pG6iaOMV46I"><img src="../images/kitsch.jpg"></a>
				<h4>Kitsch</h4><h5>IVE (아이브)</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/Qc7_zRjH808"><img src="../images/Cupid.jpg"></a>
				<h4>Cupid</h4><h5>FIFTY FIFTY</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/UBURTj20HXI"><img src="../images/unforgiven.jpg"></a>
				<h4>UNFORGIVEN</h4><h5>LE SSERAFIM (르세라핌)</h5>
			</div>
		</div>
	</div>
	
	
	<div class="platform">
		<div class="platform_head">
			<h4>인기 플랫폼</h4>
		</div>
		<div class="platform_list">
			<div class="platform_list1">
				<img src="../images/Melon.png">
				<h4>Melon</h4>
			</div>
			<div class="platform_list1">
				<img src="../images/Genie.png">
				<h4>Genie</h4>
			</div>
			<div class="platform_list1">
				<img src="../images/Flo.jpg">
				<h4>Flo</h4>
			</div>
			<div class="platform_list1">
				<img src="../images/Spotify.png">
				<h4>Spotify</h4>
			</div>
			<div class="platform_list1">
				<img src="../images/SoundCloud.jpg">
				<h4>SoundCloud</h4>
			</div>
		</div>
	</div>
	
	<jsp:include page="../Common/Footer.jsp" />
	

</body>
</html>