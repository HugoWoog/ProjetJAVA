<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE HTML>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>Projet techno web</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="all.css" rel="stylesheet">


<%@include file="navigation.html"%>
</head>
<body>

	<form method="post" action="inscription.jsp">
		<table>
			<tr>
				<td>Nom et Groupes</td>
				<td><input type="text" name="nomlivrable" id="nomlivrable"
					size="20" placeholder="Livrable 1 G1/G2"></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input type="date" name="datelivralbe" id="datelivrable"
					placeholder="2015-25-10"></td>
			</tr>
		</table>
		<input type="submit" name="valider" value="valider">
	</form>

</body>
</html>