<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
<title>Connection avec mysql</title>
</head>
<body>

<%
String URL = "jdbc:mysql://localhost:3306/gapp";
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(URL, "root" , "");
%>

<%
Statement stmt = connection.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM user WHERE user_nom = 'nom1'");
while (rs.next()) {
   String id = rs.getString("id_user");
   String nom  = rs.getString("user_nom");
   String prenom  = rs.getString("user_prenom");
   String mail  = rs.getString("user_mail");
   out.println("<ul><li>"+id+" "+nom+" "+prenom+" "+mail+"</li></ul>");
}
out.println("Aucun resultat ");
%>

</body>
</html>