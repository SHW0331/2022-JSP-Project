<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JDBC 드라이버 테스트</h2>

	<%
	String dbID = "root";
	String dbPWD = "1542684";
	String dbPORT = "3306";
	String dbNAME = "league";
	String TIMEZONE = "serverTimezone=UTC";

	String Query = "jdbc:mysql://localhost: " + dbPORT + "/" + dbNAME + "?" + TIMEZONE;

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(Query, dbID, dbPWD);

	if (conn != null) {
		out.println("WebDB 데이터베이스로 연결. <br>");
		conn.close();
		out.println("WebDB 데이터베이스로의 연결 해제. <br>");
	} else {
		out.println("WebDB 데이터베이스로 연결 불가. <br>");
	}
	%>
</body>
</html>