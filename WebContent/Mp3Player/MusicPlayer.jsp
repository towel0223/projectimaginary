<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mini Audio Player</title>
    <link
      rel="stylesheet"
      href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
      integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../res/fontawesome/css/all.css" />
    <link rel="stylesheet" href="./MusicPlayer.css" />
  </head>
  <body>
  <div class="logo"><a href="../Music/Chart.jsp"><img src="../images/logo.png"></a></div>
    <audio id="player" src="../Music/MusicList/<%=title %>.mp3"></audio>
    <div class="player">
      <div class="control">
        <i class="fas fa-play" id="playbtn"></i>
      </div>
      <div class="info">
        <%=title %>
        <div class="bar">
          <div id="progress"></div>
        </div>
      </div>

      <div id="current">0:00</div>
    </div>

    <script src="./MusicPlayer.js"></script>
  </body>
</html>