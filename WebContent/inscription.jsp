<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
String URL = "jdbc:mysql://localhost:3306/gapp";
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(URL, "root" , "");
%>



<%
Statement stmt = connection.createStatement();
String r = "INSERT INTO client(nom,date) VALUES(?,?)"; 
 String app= (String) request.getAttribute("reponse"); %>
<%=app %>




</body>
</html>