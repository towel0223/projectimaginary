<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
<title>오늘의 추천음악</title>
<link rel="stylesheet" href="./RecommendedMusic.css">
</head>
<body>
<jsp:include page="../Common/Nav.jsp" />
<h2>추천음악</h2>

	<div class="personal_recommend_w">
		<div class="personal_recommend_head">
			<h4>YOSHI 추천 음악</h4>
			<div class="total_status_data"><%=formattedDate %></div>
		</div>
		<div class="album_list">
			<div class="album_list1">
				<a href="https://youtu.be/F0B7HDiY-10"><img src="../images/추천1.jpg"></a>
				<h4>After LIKE</h4><h5>IVE (아이브)</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/gdZLi9oWNZg"><img src="../images/추천2.jpg"></a>
				<h4>Dynamite</h4><h5>방탄소년단</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/xEeFrLSkMm8"><img src="../images/추천3.jpg"></a>
				<h4>봄날</h4><h5>방탄소년단</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/3bnjH5jXxJc"><img src="../images/추천4.jpg"></a>
				<h4>KNOCK</h4><h5>이채연</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/vfUAckewh_8"><img src="../images/추천5.jpg"></a>
				<h4>건물 사이에 피어난 ...</h4><h5>H1-KEY (하이키)</h5>
			</div>
		</div>
		
		<div class="album_list">
			<div class="album_list1">
				<a href="https://youtu.be/fCO7f0SmrDc"><img src="../images/추천6.jpg"></a>
				<h4>Nxde</h4><h5>(여자)아이들</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/Jh4QFaPmdss"><img src="../images/추천7.jpg"></a>
				<h4>TOMBOY</h4><h5>(여자)아이들</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/EDnwWcFpObo"><img src="../images/추천8.jpg"></a>
				<h4>Love Me Like This</h4><h5>NMIXX</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/U5TTMeIadME"><img src="../images/추천9.jpg"></a>
				<h4>해요 (2022)</h4><h5>#안녕</h5>
			</div>
			<div class="album_list1">
				<a href="https://youtu.be/IeDb7OrnGNE"><img src="../images/추천10.jpg"></a>
				<h4>Monologue</h4><h5>테이</h5>
			</div>
		</div>
	</div>
	
	
	<div class="personal_recommend_w2">
		<div class="personal_recommend_head2">
			<h4>역주행 곡</h4>
			<div class="total_status_data2"><a href="https://www.youtube.com/watch?v=GNeNVvKgdms">[전체듣기]</a> | <%=formattedDate %></div>
		</div>
		<div class="album_list3">
			<div class="album_list4">
				<a href="https://youtu.be/3iM_06QeZi8"><img src="../images/역주행1.jpg"></a>
				<h4>내 손을 잡아</h4><h5>아이유 (IU)</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/jy_UiIQn_d0"><img src="../images/역주행2.jpg"></a>
				<h4>좋니</h4><h5>윤종신</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/bkEpWA-4FfU"><img src="../images/역주행3.jpg"></a>
				<h4>너였다면</h4><h5>정승환</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/OmjN_b07syo"><img src="../images/역주행4.jpg"></a>
				<h4>오빠야</h4><h5>신현희와 김루트</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/-Axm4IYHVYk"><img src="../images/역주행5.jpg"></a>
				<h4>롤린 (Rollin')</h4><h5>브레이브걸스 (Brave Girls)</h5>
			</div>
		</div>
		
		<div class="album_list3">
			<div class="album_list4">
				<a href="https://youtu.be/bW3XExLBf7A"><img src="../images/역주행6.jpg"></a>
				<h4>오래된 노래</h4><h5>스탠딩 에그</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/hfXZ6ydgZyo"><img src="../images/역주행7.jpg"></a>
				<h4>위아래</h4><h5>EXID</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/4HjcypoChfQ"><img src="../images/역주행8.jpg"></a>
				<h4>운전만해</h4><h5>브레이브걸스 (Brave Girls)</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/4iFP_wd6QU8"><img src="../images/역주행9.jpg"></a>
				<h4>Square</h4><h5>백예린</h5>
			</div>
			<div class="album_list4">
				<a href="https://youtu.be/Ff_SuAzll90"><img src="../images/역주행10.jpg"></a>
				<h4>ROSE</h4><h5>이하이</h5>
			</div>
		</div>
	</div>
	
	
	<div class="personal_recommend_w3">
		<div class="personal_recommend_head3">
			<h4>모르면 간첩! 락발라드</h4>
			<div class="total_status_data3"><a href="https://youtu.be/Mk60vNtvsqA">[전체듣기]</a> | <%=formattedDate %></div>
		</div>
		<div class="album_list5">
			<div class="album_list6">
				<a href="https://youtu.be/rZnw6xKmAmI"><img src="../images/락발라드1.jpg"></a>
				<h4>이미 슬픈 사랑</h4><h5>야다</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/9xn5bfdT7Ec"><img src="../images/락발라드2.jpg"></a>
				<h4>금지된 사랑</h4><h5>김경호</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/iwePzJLYBwE"><img src="../images/락발라드3.jpg"></a>
				<h4>가질 수 없는 너</h4><h5>뱅크</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/RnWNSAiZXMk"><img src="../images/락발라드4.jpg"></a>
				<h4>말리꽃</h4><h5>이승철</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/KZSy8WEdAiA"><img src="../images/락발라드5.jpg"></a>
				<h4>하늘 끝에서 흘린 ...</h4><h5>주니퍼</h5>
			</div>
		</div>
		
		<div class="album_list5">
			<div class="album_list6">
				<a href="https://youtu.be/eqAlB4Dnur8"><img src="../images/락발라드6.jpg"></a>
				<h4>Don't Cry</h4><h5>더 크로스</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/HDnNVWTANgY"><img src="../images/락발라드7.jpg"></a>
				<h4>Endless</h4><h5>플라워</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/LneGd_itknE"><img src="../images/락발라드8.jpg"></a>
				<h4>You</h4><h5>김상민</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/4i__bZyWzSc"><img src="../images/락발라드9.jpg"></a>
				<h4>One Love</h4><h5>M.C The Max</h5>
			</div>
			<div class="album_list6">
				<a href="https://youtu.be/FT1pDacyuVk"><img src="../images/락발라드10.jpg"></a>
				<h4>가시</h4><h5>버즈</h5>
			</div>
		</div>
	</div>
	
	
	<div class="personal_recommend_w4">
		<div class="personal_recommend_head4">
			<h4>요새 인기있는 POP</h4>
			<div class="total_status_data4"><%=formattedDate %></div>
		</div>
		<div class="album_list7">
			<div class="album_list8">
				<a href="https://youtu.be/TBXQu8ORnBQ"><img src="../images/pop1.jpg"></a>
				<h4>Dangerously</h4><h5>Charlie Puth</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/Il-an3K9pjg"><img src="../images/pop2.jpg"></a>
				<h4>2002</h4><h5>Anne-Marie</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/Uq9gPaIzbe8"><img src="../images/pop3.jpg"></a>
				<h4>Unholy</h4><h5>Sam Smith, Kim Petras</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/oyEuk8j8imI"><img src="../images/pop4.jpg"></a>
				<h4>Love Yourself</h4><h5>Justin Bieber</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/nfs8NYg7yQM"><img src="../images/pop5.jpg"></a>
				<h4>Attention</h4><h5>Charlie Puth</h5>
			</div>
		</div>
		
		<div class="album_list7">
			<div class="album_list8">
				<a href="https://youtu.be/prYbXj3zPfs"><img src="../images/pop6.jpg"></a>
				<h4>GHOST TOWN</h4><h5>Benson Boone</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/SlPhMPnQ58k"><img src="../images/pop7.jpg"></a>
				<h4>Memories</h4><h5>Maroon 5</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/7wtfhZwyrcc"><img src="../images/pop8.jpg"></a>
				<h4>Believer</h4><h5>Imagine Dragons</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/u6wOyMUs74I"><img src="../images/pop9.jpg"></a>
				<h4>Eyes Closed</h4><h5>Ed Sheeran</h5>
			</div>
			<div class="album_list8">
				<a href="https://youtu.be/gset79KMmt0"><img src="../images/pop10.jpg"></a>
				<h4>Snowman</h4><h5>Sia</h5>
			</div>
		</div>
	</div>
	<jsp:include page="../Common/Footer.jsp" />
</body>
</html>