<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
			<span>선수 기록</span> <span>K리그의 선수 순위, 기록, 데이터를 확인할 수 있는 공간입니다.</span>
		</div>
	</div>

	<div class="main">
		<div class="player">
			<div class="player__top">
				<table class="player__table">
					<thead>
						<tr>
							<th class="player__table__th">순위</th>
							<th class="player__table__th">선수 명</th>
							<th class="player__table__th">팀</th>
							<th class="player__table__th">포지션</th>
							<th class="player__table__th">득점</th>
							<th class="player__table__th">도움</th>
							<th class="player__table__th">공격포인트</th>
							<th class="player__table__th">슈팅</th>
							<th class="player__table__th">출장</th>
							<th class="player__table__th">교체</th>
							<th class="player__table__th">경기당 기록</th>
						</tr>
					</thead>

					<tbody>
						<!--
                    <tr>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">
                          <a href="playerInfo.jsp">서해원</a>
                        </td>
                        <td class="player__table__td">서울FC</td>
                        <td class="player__table__td">FW</td>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">0.5</td>
                    </tr>
                                    -->
					</tbody>

				</table>
			</div>
			<div class="player__bottom">
				<span><a href="#">1</a></span> <span><a href="#">2</a></span> <span><a
					href="#">3</a></span> <span><a href="#">4</a></span> <span><a
					href="#">5</a></span>
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