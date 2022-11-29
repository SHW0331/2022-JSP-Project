<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://kit.fontawesome.com/60c73f104d.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/styles.css" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>K LEAGUE DATA</title>
</head>

<body>
	<div class="top-bar">
		<div class="top-bar__logo">
			<a href="index.jsp"> <img class="top-bar__logo__svg"
				src="./css/img/logo.png" alt="K리그 로고">
			</a>
		</div>
		<div class="top-bar__login">
			<div class="top-bar__login__column">
				<span class="top-bar__login__column__right"> <a
					href="myInfo.jsp">내정보</a>
				</span> <span class="top-bar__login__column__left"> <a
					href="login.jsp">login</a>
				</span>
			</div>
		</div>
	</div>

	<header class="header-bar">
		<div class="header-bar__team">
			<a href="team.jsp"> <span>팀</span></a>
		</div>
		<div class="header-bar__player">
			<a href="player.jsp"> <span>선수</span></a>
		</div>
		<div class="header-bar__calendar">
			<a href="board.jsp"> <span>게시판</span></a>
		</div>
	</header>

	<div class="info-bar">
		<div class="info-bar__column">
			<span>홈 화면</span> <span>K리그의 선수 순위, 기록, 데이터 등을 검색 할 수 있는
				공간입니다.</span>
		</div>
	</div>

	<div class="main">
		<div class="index">
			<div class="index__left">
				<video muted autoplay loop>
					<source src="./css/img/bg.mp4" type="video/mp4">
				</video>
			</div>
			<div class="index__right">
				<div class="index__title">
					<span> K리그 검색</span>
				</div>
				<div class="index__search">
					<form action="" method="get">
						<input id="index__search__box" type="text"
							placeholder="팀명.. 선수명.." autocomplete="off"> <input
							id="index__search__btn" type="submit" value="Search"
							autocomplete="off">
					</form>
				</div>
			</div>
		</div>
	</div>


	<footer class="bottom-bar">
		<a href="test.jsp"> <img src="./css/img/foot_logo.png"
			alt="K리그 투명로고">
		</a>
	</footer>
</body>
</html>