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
	<h2>JDBC ����̹� �׽�Ʈ</h2>

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
		out.println("WebDB �����ͺ��̽��� ����. <br>");
		conn.close();
		out.println("WebDB �����ͺ��̽����� ���� ����. <br>");
	} else {
		out.println("WebDB �����ͺ��̽��� ���� �Ұ�. <br>");
	}
	%>
</body>
</html>