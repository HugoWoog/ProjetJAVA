<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Get MVC</title>
</head>
<body>
<h1>Test get MVC App</h1>

<jsp:useBean id="person" type="lab.mvc.model.Person" scope="request"/>

<p> Login: 
   <jsp:getProperty name="person" property="login"/>
</p>
<p> Password: 
   <jsp:getProperty name="person" property="password"/>
</p>


</body>
</html>