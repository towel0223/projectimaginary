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
 		if(form.bannerImage.value==""){
 			alert("배너이미지를 등록하세요.");
 			form.url.focus();
 			return false;
 		}
 	}

</script>
<meta charset="UTF-8">
<title>배너수정</title>
<link rel="stylesheet" href="./BannerEdit.css">
</head>
<body>
<div id='logo'>
		<a href="../Main/Main.jsp" > 
			<img src="../images/logo.png">
		</a>
	</div>	
<form method="post" enctype="multipart/form-data" action="BannerEditProcess.jsp" onsubmit="return validateForm(this);">
	<div>
	<a>URL:</a>
	<input type="text" name="url" placeholder="URL" />
	</div>
	<div>
	<a>배너 이미지: </a><input type="file" name="bannerImage"/>
	</div>
	<div>
	<a>배너의 위치(왼쪽위부터): </a><select name="myOption">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
  	</select>
  	</div>
	<input type="submit" value="전송" />
</form>

</body>
</html>