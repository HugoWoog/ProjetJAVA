<!DOCTYPE HTML>


<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
<title>Modification des fiches élèves</title>
</head>
<body>

<%
String URL = "jdbc:mysql://localhost:3306/gapp";
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(URL, "root" , "");
%>


<link rel="icon" href="../../favicon.ico">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Project name</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>
<!-- fin de la nav bar -->
<div class="container" style="padding-top:70px;">
<div class="row">
<div class="col-md-4">
<input type="text" class='form-control' placeholder="Profil"><br/>
<input type="text" class='form-control' placeholder="Recherche">
</div>
<button class="btn btn-primary">Eleve precedent</button>
<button class="btn btn-primary">Eleve suivant</button>
<div class="col-md-4">
<button class="btn btn-primary">Revenir au groupe G2</button>
</div>
</div>
<br/>

<div class="row">
        <div class="col-md-4">
        
            <h2>Informations</h2>
            <%       
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM user WHERE user_nom = 'Dupont'");

            while (rs.next()) {
            	// info de la bdd
			   String id = rs.getString("id_user");
			   String nom  = rs.getString("user_nom");
			   String prenom  = rs.getString("user_prenom");
			   String mail  = rs.getString("user_mail");
			   String group = rs.getString("group");
			   // creation des inputs
 		    out.println("Prenom : <input type='text' class='form-control' name='prenom' value="+prenom);
 		   out.print("<br/><br/><br/>");  
 		   out.println("Nom :<input type='text' class='form-control' name='nom' value="+nom);   
			out.print("<br/><br/><br/>");
 		 	out.println("Mail :<input type='text' class='form-control' name='mail' value="+mail);
 		 	out.print("<br/><br/><br/>");
 		 	out.println("Group :<input type='text' class='form-control'  value="+group);
 			out.print("<br/><br/><br/>");
 		 	out.println("Remarque : <textarea>Votre remarque</textarea>");
 			out.print("<br/><br/><br/>");
 		 	out.println("<form method='POST' action='FormServlet'><input type='submit' class='btn btn-primary' value='modifier' </form>");
}			
           
          
%>
            
            <br/> <br/>
        </div>
        <div class="col-md-4">
            <h2>Absences</h2>
              <input type="text" class='form-control' placeholder="Taux de presence "><br/> <br/>
              <input type="text" class='form-control' placeholder="Date des absences"><br/> 
              <br/> 
              Seance 3 : 04/02/2016<br/> <br/> 
              Seance 5 : 19/02/2016
        </div>
        <div class="col-md-4">
            <h2>Evaluations</h2>
            <p><a class="btn btn-secondary" href="#" role="button">Remplir griller de compétences</a></p><br/><br/>
            1. Eleve trop bavard<br/><br/>
            2. Devoir SQL rendu en retard<br/><br/>
         	3. Soumettre nouvelle remarque
        </div>
    </div>
</div>