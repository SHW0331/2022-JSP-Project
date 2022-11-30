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
				src="./css/img/logo.png" alt="K���� �ΰ�">
			</a>
		</div>
		<div class="top-bar__login">
			<div class="top-bar__login__column">
				<span class="top-bar__login__column__right"> <a
					href="myInfo.jsp">������</a>
				</span> <span class="top-bar__login__column__left"> <a
					href="login.jsp">login</a>
				</span>
			</div>
		</div>
	</div>

	<header class="header-bar">
		<div class="header-bar__team">
			<a href="team.jsp"> <span>��</span></a>
		</div>
		<div class="header-bar__player">
			<a href="player.jsp"> <span>����</span></a>
		</div>
		<div class="header-bar__calendar">
			<a href="board.jsp"> <span>�Խ���</span></a>
		</div>
	</header>

	<div class="info-bar">
		<div class="info-bar__column">
			<span>�α��� ȭ��</span> <span>K������ �α���, ȸ������ �� �� �ִ� �����Դϴ�.</span>
		</div>
	</div>

	<div class="main">
		<div class="main">
			<div class="login">
				<form method="post" action="loginAction.jsp">
					<input type="text" class="login__id" name="userID"
						placeholder="���̵�"> <input type="password"
						class="login__password" name="userPassword" placeholder="��й�ȣ" maxlength="20">
					<input type="submit" class="login__btn" value="�α���">
				</form>
			</div>
		</div>
	</div>



	<footer class="bottom-bar">
		<a href="test.jsp"> <img src="./css/img/foot_logo.png"
			alt="K���� ����ΰ�">
		</a>
	</footer>
</body>
</html>