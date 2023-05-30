<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 플레이리스트, YM</title>
<link rel="stylesheet" href="Main.css">
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

	<header>
		<div class="header_wrap">
			<div class="logo">
				<a href="Main.jsp"> <img src="logo.png">
				</a>
			</div>
			<div class="search_box">
				<img src="https://imgur.com/dYH02M1.png" onclick="submitForm(document.getElementById('searchWord').value)"> <input type="text"
					placeholder="검색어를 입력하세요." id="searchWord" onkeypress="handleKeyPress(event)" >
			</div>
			<nav>
				<ul>
					<li><a href="#">자유게시판</a></li>
					<li><a href="#">인기차트</a></li>
					<li><a href="#">추천음악</a></li>
					<li><a href="./LoginConfirmation.jsp">마이페이지</a></li>
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