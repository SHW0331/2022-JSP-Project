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
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	} else {
	%>
	<script>
		alert("로그인이 필요합니다.")
		location.href = 'login.jsp';
	</script>
	<%
	}
	%>

	<div class="top-bar">
		<div class="top-bar__logo">
			<a href="index.jsp"> <img class="top-bar__logo__svg"
				src="./css/img/logo.png" alt="K리그 로고">
			</a>
		</div>
		<div class="top-bar__login">
			<div class="top-bar__login__column">
				<%
				if (userID == null) {
				%>
				</span> <span class="top-bar__login__column__left"> <a
					href="login.jsp">로그인</a>
				</span>

				<%
				} else {
				%>
				<span class="top-bar__login__column__left"> <a
					href="myInfo.jsp">내정보</a> <span
					class="top-bar__login__column__right"> <a
						href="logoutAction.jsp">로그아웃</a> <%
 }
 %>
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
			<table class="player__table">
				<thead>
					<tr>
						<th>순위</th>
						<th>선수 명</th>
						<th>팀</th>
						<th>포지션</th>
						<th>득점</th>
						<th>도움</th>
						<th>공격포인트</th>
						<th>슈팅</th>
						<th>출장</th>
						<th>교체</th>
						<th>경기당 기록</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td class="tit">서해원</td>
						<td>서해원</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
					</tr>
				</tbody>
			</table>
			<div class="paging">
				<a href="" class="num-on">1</a> <a href="" class="num">2</a> <a
					href="" class="num">3</a> <a href="" class="num">4</a> <a href=""
					class="num">5</a> <a href="" class="write">글쓰기</a>
			</div>
		</div>
	</div>



	<footer class="bottom-bar">
		<a href="index.jsp"> <img src="./css/img/foot_logo.png"
			alt="K리그 투명로고">
		</a>
	</footer>
</body>
</html>