<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.google.appengine.api.users.*"%>
<% String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<% User userG=(User)request.getAttribute("userG");%>
<!DOCTYPE>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/stylesheets/styles.css">
		<link rel="stylesheet" href="/Estilos/estilos.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
<nav class="navbar navbar-dark bg-info">
			<ul class="nav navbar-nav">
			<li><a  href="/roles">Roles</a></li>
			<li><a  href="/users">Users</a></li>
			<li><a  href="/resources">Resource</a></li>
			<li><a  href="/access">Access</a></li>
			<li><a  href="/peces?action=PezLookup">Peces</a></li>
			<li><a  href="/users/login">Login</a></li>
			<li><a  href="/users/logout">Logout</a></li>
		</ul>
		</nav>
	</div>
	<div class="container">
		<h1>Correo:</h1>
			<p>Id del Correo: <%=userG.getUserId() %>
			<p>Correo: <%=userG.getEmail() %>
		<br><div><%=mensaje%></div>
		</div>
	</body>
</html>