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
<title>당신의 플레이리스트, YM</title>
<link rel="stylesheet" href="../Common/Nav.css">
<link rel="stylesheet" href="./Main.css">
</head>
<script type="text/javascript">
	function submitForm(value) {
		var form = document.createElement("form");
		form.method = "POST";
		form.action = "../Music/SearchMusic.jsp";
		var input = document.createElement("input");
		input.type = "hidden";
		input.name = "value";
		input.value = value;
		form.appendChild(input);
		document.body.appendChild(form);
		form.submit();
	}

	function handleKeyPress(event) {
		if (event.keyCode === 13) {
			var value = document.getElementById("searchWord").value;
			submitForm(value);
		}
	}
</script>
<body>
	<jsp:include page="../Common/Nav.jsp" />
	
	<section>
		<div class="main_board"></div>
	</section>
	
	<div id="banner">
		<img alt="행사 배너" src="../images/행사 배너.jpg">
		<img alt="행사 배너" src="../images/행사 배너2.jpg">
	</div>
	
	<div class="personal_recommend_w">
		<div class="personal_recommend_head">
			<h4>오늘의 음악</h4>
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
	</div>



</body>
</html>