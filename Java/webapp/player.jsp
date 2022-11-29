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
			<span>���� ���</span> <span>K������ ���� ����, ���, �����͸� Ȯ���� �� �ִ� �����Դϴ�.</span>
		</div>
	</div>

	<div class="main">
		<div class="player">
			<div class="player__top">
				<table class="player__table">
					<thead>
						<tr>
							<th class="player__table__th">����</th>
							<th class="player__table__th">���� ��</th>
							<th class="player__table__th">��</th>
							<th class="player__table__th">������</th>
							<th class="player__table__th">����</th>
							<th class="player__table__th">����</th>
							<th class="player__table__th">��������Ʈ</th>
							<th class="player__table__th">����</th>
							<th class="player__table__th">����</th>
							<th class="player__table__th">��ü</th>
							<th class="player__table__th">���� ���</th>
						</tr>
					</thead>

					<tbody>
						<!--
                    <tr>
                        <td class="player__table__td">1</td>
                        <td class="player__table__td">
                          <a href="playerInfo.jsp">���ؿ�</a>
                        </td>
                        <td class="player__table__td">����FC</td>
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
			alt="K���� ����ΰ�">
		</a>
	</footer>
</body>
</html>