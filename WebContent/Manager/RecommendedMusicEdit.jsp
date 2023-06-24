<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
 	function validateForm(form){
 		if(form.url.value==""){
 			alert("url을 입력하세요.");
 			form.url.focus();
 			return false;
 		}
 		if(form.MusicImage.value==""){
 			alert("노래이미지를 등록하세요.");
 			form.MusicImage.focus();
 			return false;
 		}
 		if(form.artist.value==""){
 			alert("아티스트를 등록하세요.");
 			form.artist.focus();
 			return false;
 		}
 		if(form.musicName.value==""){
 			alert("노래이름을 등록하세요.");
 			form.musicName.focus();
 			return false;
 		}
 	}

</script>
<meta charset="UTF-8">
<title>추천음악</title>
<link rel="stylesheet" href="./RecommendedMusicEdit.css">
</head>
<body>
<div id='logo'>
		<a href="../Main/Main.jsp" > 
			<img src="../images/logo.png">
		</a>
	</div>	
<form method="post" enctype="multipart/form-data" action="RecommendedMusicEditProcess.jsp" onsubmit="return validateForm(this);">
	<input type="text" name="url" placeholder="URL" />
	<input type="text" name="artist" placeholder="아티스트" />
	<input type="text" name="musicName" placeholder="노래 이름" />	
	<div><a>배너 이미지:</a><input type="file" name="MusicImage"/></div>
<div>	<a>배너의 위치(왼쪽위부터)</a><select name="myOption">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
  	</select>
  	</div>
	<input type="submit" value="전송" />
</form>

</body>
</html>