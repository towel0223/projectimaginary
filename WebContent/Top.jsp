<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top</title>
<link rel="stylesheet" href="../Main.css">
</head>
<body>
<header>
		<div class="header_wrap">
			<div class="logo">
				<a href="../Main.jsp"> <img src="../logo.png">
				</a>
			</div>
			<div class="search_box">
				<img src="https://imgur.com/dYH02M1.png"> <input type="text"
					placeholder="검색어를 입력하세요.">
			</div>
			<nav>
				<ul>
					<li><a href="#">자유게시판</a></li>
					<li><a href="#">인기차트</a></li>
					<li><a href="#">추천음악</a></li>
					<li><a href="#">마이페이지</a></li>
					<li><a href="#">Q&A</a></li>
				</ul>
			</nav>
			<ul class="sub_menu">
				<li><a href="#">YM 소개</a></li>
				<%
				if(session.getAttribute("UserId") == null){
				%>
					<li><a href="./Login/yLoginForm.jsp">로그인</a></li>
				<%
				} else{
				%>
					<li><a href="./Login/yLogout.jsp">로그아웃</a></li>
				<%
				}
				%>
				<li><a href="./Membership/yMembership.jsp">회원가입</a></li>
			</ul>
		</div>
	</header>
	<section>
		<div class="main_board"></div>
	</section>
</body>
</html>