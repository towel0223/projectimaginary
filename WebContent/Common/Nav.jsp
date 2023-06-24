<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../Common/Nav.css">
<html>
<head></head>
<script type="text/javascript">
	function submitForm(value) {
		var form = document.createElement("form");
		form.method = "POST";
		form.action = "../Search/SearchPage.jsp";
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
			<a href="../Main/Main.jsp"><img src="../images/logo.png"></a>
		</div>
		<div class="search_box"> 
			<img src="https://imgur.com/dYH02M1.png" onclick="submitForm(document.getElementById('searchWord').value)">
<input type="text" id="searchWord" placeholder="검색어를 입력하세요." onkeydown="handleKeyPress(event)"> 
<!-- 이미지 클릭하거나 enter를 누르면 검색 -->
		</div>
      
			
		<ul class="sub_menu">
			<li><a href="https://www.youtube.com/channel/UCRPiGd-HzA4qExOgzlOcSrQ">공식SNS</a></li>
		
			<% 	// 로그인 시 로그아웃 글자가 뜨게끔 설정
			if(session.getAttribute("UserId") == null) {
			%>
			<li><a href="../Login/yLoginForm.jsp">로그인</a></li>
			<% } else { %>
			<li><a href="../Login/yLogout.jsp">로그아웃</a></li>
			<% } %>
			<li><a href="../Membership/yMembership.jsp">회원가입</a></li>
		</ul>
		</div>
		<nav>
			<ul>
				<li><a href="../Board/FreeBoardList.jsp">자유게시판</a></li>
				<li><a href="../Music/Chart.jsp">인기차트</a></li>
				<li><a href="../Music/RecommendedMusic.jsp">추천음악</a></li>
				<li><a href="../Mypage/MypageForm.jsp">마이페이지</a></li>
				<li><a href="../Notice/Notice.jsp">공지사항</a></li>
			</ul>
		</nav>
	
</header>
</body>
</html>