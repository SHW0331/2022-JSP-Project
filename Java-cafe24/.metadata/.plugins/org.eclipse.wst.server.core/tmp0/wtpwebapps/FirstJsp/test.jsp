<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<html>
<head>
<%@ page errorPage="errorpg.jsp"
import="java.sql.*,
javax.sql.*,
java.io.*" %>
</head>
<body>
<h1>JDBC Test</h1>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://sywok0331.cafe24/sywok0331", "sywok0331" , "TG1542684");
Statement stmt = conn.createStatement();
ResultSet rset = stmt.executeQuery("select version()");
while (rset.next()) {
	out.println("mysql version ==>" + rset.getString("version()"));
}
rset.close();
stmt.close();
conn.close();
%>
</body>
</html>