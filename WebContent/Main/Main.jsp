<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 플레이리스트, YM</title>
<link rel="stylesheet" href="Main.css">
</head>
<body>
<jsp:include page="../Common/Nav.jsp" />
	<section>
    	<div class="main_board" align="center">
        	<div class="image-grid">
            	<%
            	String src = "https://via.placeholder.com/150";
            	for (int i = 1; i <= 10; i++) {
            	%>
            	<img src="<%= src %>" class="thumbnail-image">
            	<%
            	    if (i % 5 == 0) {
            	%>
            	<br style="clear: both;">
            	<%
                	}
            	}
            	%>
        	</div>
    	</div>
	</section>

</body>
</html>