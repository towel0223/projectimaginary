<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Mini Audio Player</title>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="../res/fontawesome/css/all.css" />
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.player {
	width: 640px;
	background-color: violet;
	display: grid;
	grid-template-columns: 48px 1fr 48px;
	grid-gap: 16px;
	padding: 8px 24px;
	position: fixed;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
	border-radius: 64px;
	color: white;
}

.control, #current {
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding-block: 16px;
}

#playbtn {
	font-size: 24px;
	color: transparent;
	-webkit-text-stroke-width: 1px;
	-webkit-text-stroke-color: white;
	cursor: pointer;
}

#playbtn:hover {
	-webkit-text-fill-color: white;
}

.info {
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 21px;
}

#current {
	text-align: right;
}

.bar { -
	-space: -4px;
	overflow: hidden;
	left: var(- -space);
	right: var(- -space);
	top: var(- -space);
	bottom: var(- -space);
	position: absolute;
	border-radius: 64px;
	z-index: -2;
}

#progress {
	display: block;
	width: var(- -progress, 0%);
	transition: all 1s linear;
	height: 100%;
}

.bar{
	width: 1300px;
	height: 72px;
	background-color: #8152FF;
}
</style>
</head>
<body>
	<audio id="player" src="../Mp3Player/TheFatRat - Electrified.m4a"></audio>
	<div id="bar">	
		<div class="player">
			<div class="control">
				<i class="fas fa-play" id="playbtn"></i>
			</div>
			<div class="info">
				TheFatRat - Electrified
				<div class="bar">
					<div id="progress"></div>
				</div>
			</div>

			<div id="current">0:00</div>
		</div>
	</div>

		<script>
		var player = document.getElementById("player");
		let progress = document.getElementById("progress");
		let playbtn = document.getElementById("playbtn");

		var playpause = function () {
		  if (player.paused) {
		    player.play();
		  } else {
		    player.pause();
		  }
		}

		playbtn.addEventListener("click", playpause);

		player.onplay = function () {
		  playbtn.classList.remove("fa-play");
		  playbtn.classList.add("fa-pause");
		}

		player.onpause = function () {
		  playbtn.classList.add("fa-play");
		  playbtn.classList.remove("fa-pause");
		}

		player.ontimeupdate = function () {
		  let ct = player.currentTime;
		  current.innerHTML = timeFormat(ct);
		  //progress
		  let duration = player.duration;
		  prog = Math.floor((ct * 100) / duration);
		  progress.style.setProperty("--progress", prog + "%");
		}

		function timeFormat(ct) {
		  minutes = Math.floor(ct / 60);
		  seconds = Math.floor(ct % 60);

		  if (seconds < 10) {
		    seconds = "0"+seconds;
		  }

		  return minutes + ":" + seconds;
		}
    	</script>
</body>
</html>
