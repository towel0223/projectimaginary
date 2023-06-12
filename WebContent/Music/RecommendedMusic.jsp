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
			<div class="total_status_data">총 10곡 | <%=formattedDate %></div>
		</div>
		<div class="album_list">
			<div class="album_list1">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
		
		<div class="album_list">
			<div class="album_list1">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list1">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
	</div>
	
	
	<div class="personal_recommend_w2">
		<div class="personal_recommend_head2">
			<h4>역주행 각?!</h4>
			<div class="total_status_data2">총 10곡 | <%=formattedDate %></div>
		</div>
		<div class="album_list3">
			<div class="album_list4">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
		
		<div class="album_list3">
			<div class="album_list4">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list4">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
	</div>
	
	
	<div class="personal_recommend_w3">
		<div class="personal_recommend_head3">
			<h4>이거 모르면 간첩이지~!</h4>
			<div class="total_status_data3">총 10곡 | <%=formattedDate %></div>
		</div>
		<div class="album_list5">
			<div class="album_list6">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
		
		<div class="album_list5">
			<div class="album_list6">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list6">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
	</div>
	
	
	<div class="personal_recommend_w4">
		<div class="personal_recommend_head4">
			<h4>요새 인기있는 POP</h4>
			<div class="total_status_data4">총 10곡 | <%=formattedDate %></div>
		</div>
		<div class="album_list7">
			<div class="album_list8">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기.jpg">
				<h4>우리아빠는 슈퍼맨</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
		
		<div class="album_list7">
			<div class="album_list8">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
			<div class="album_list8">
				<img src="../images/기타치는물고기2.jpg">
				<h4>모태솔로</h4><h5>기타치는 물고기</h5>
			</div>
		</div>
	</div>
</body>
</html>