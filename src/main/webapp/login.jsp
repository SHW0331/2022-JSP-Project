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
			<span>로그인 화면</span> <span>K리그의 로그인, 회원가입 할 수 있는 공간입니다.</span>
		</div>
	</div>

	<div class="main">
		<div class="login">
			<div class="container right-panel-active">
				<!-- Sign Up -->
				<div class="container__form container--signup">
					<form action="joinAction.jsp" method="post" class="form">
						<h2 class="form__title">회원가입</h2>
          <input type="text" placeholder="ID" class="input" name="userID"/> 
          <input type="password" placeholder="Password" class="input" name="userPassword"/>
          <input type="text" placeholder="Name" class="input" name="userName"/> 
          <label class="form__label" active>
            <input type="radio" value="남자" checked class="input" name="userGender" autocomplete="off"/>M
            <input type="radio" value="여자" class="input" name="userGender" autocomplete="off"/>W
          </label>
          <input type="text" placeholder="Email" class="input" name="userEmail"/> 
						<button class="btn">회원가입</button>
					</form>
				</div>

				<!-- Sign In -->
				<div class="container__form container--signin">
					<form action="loginAction.jsp" method="post" class="form">
						<h2 class="form__title">로그인</h2>
						<input type="text" placeholder="ID" class="input" name="userID" />
						<input type="password" placeholder="Password" class="input"
							name="userPassword" /> <a href="#" class="link">비밀번호 찾기</a>
						<button class="btn">로그인</button>
					</form>
				</div>

				<!-- Overlay -->
				<div class="container__overlay">
					<div class="overlay">
						<div class="overlay__panel overlay--left">
							<button class="btn" id="signIn">로그인</button>
						</div>
						<div class="overlay__panel overlay--right">
							<button class="btn" id="signUp">회원가입</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="./script/login-form.js"></script>
	</div>



	<footer class="bottom-bar">
		<a href="test.jsp"> <img src="./css/img/foot_logo.png"
			alt="K리그 투명로고">
		</a>
	</footer>
</body>
</html>