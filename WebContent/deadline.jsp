<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE HTML>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>Projet techno web</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="all.css" rel="stylesheet">


<%@include file="navigation.html" %>
</head>
<body>

<a href="new_deadline.jsp"> Ajouter des deadlines</a>

<%
String URL = "jdbc:mysql://localhost:3306/gapp";
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(URL, "root" , "");
%>



<%
Statement stmt = connection.createStatement();
ResultSet rs = stmt.executeQuery("select * from deadline");
while (rs.next()) {
   String nom  = rs.getString("deadline_nom");
   String date  = rs.getString("deadline_date");
   String descri  = rs.getString("deadline_descri");
   out.println("<li>"+nom+" "+date+" "+descri+"</li>");
}
%>

	<script src="static/bootstrap/js/jquery.js"></script>
	<script src="static/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>