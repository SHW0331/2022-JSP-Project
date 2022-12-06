<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="player.PlayerDAO"%>
<%@ page import="player.Player"%>
<%@ page import="java.util.ArrayList"%>
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
					<form action="search.jsp" method="post">
						<table>
							<tr>
								<td><select name="searchField">
										<option value="playerName">선수</option>
										<option value="team">팀</option>
								</select></td>
								<td><input type="text"
									placeholder="검색어 입력" name="searchText"
									maxlength="100"></td>
								<td><input type="submit" value="검색"></td>
							</tr>
						</table>
					</form>
				</div>
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