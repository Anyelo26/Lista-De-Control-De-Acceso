<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<!DOCTYPE >
<html>
	<head>
		<title>Creacion de Rol</title>
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
			<li><a href="/roles">Regresar al Menú</a></li>
		</ul>
		</nav>
		<h1>Nuevo Rol</h1>
		</div>
		<div class="container">
		<form method="post" action="/roles/add">
			<input type="hidden" name="action" value="roleCreateDo"/>
			<table class="table table-hover">
				<tr>
					<td class="dif">Nombre</td>
					<td><input type="text" name="name" required pattern="([A-Za-z0-9])+"></td>
				</tr>
				<tr>
					<td class="dif">Estado</td>
					<td>
						<select name=estatus>
						  <option value="Activado">Activado</option>
						  <option value="Desactivado">Desactivado</option>
						</select></td>
				</tr>
				<tr class="dif">
					<td colspan="2"><input  class="btn btn-primary " type="submit" value="Subir"></td>
				</tr>
			</table>
		</form>
		<br><div><%=mensaje%></div>
		</div>
	</body>
</html>