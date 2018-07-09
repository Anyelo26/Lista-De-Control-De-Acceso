<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.entity.Users"%>
<%@ page import="model.entity.Roles"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<%
	Users user = (Users)request.getAttribute("user");
	Roles role = (Roles)request.getAttribute("role");
	String estatus="Activado",gender="Masculino";
	if(user.isStatus()==false){estatus="Desactivado";}
	if(user.isGender()==false){gender="Femenino";}
	SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE >
<html>
	<head>
		<title>Caracteristicas de Usuario</title>
		<link rel="stylesheet" type="text/css" href="/stylesheets/styles.css"/>
		<link rel="stylesheet" href="/Estilos/estilos.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
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
			<li><a href="/users/add">Agregar Usuario</a></li>
		</ul>
		</nav>
		<h1>Visualización de Usuario</h1>
		</div>
		<div class="container">
		<table class="table table-hover">
			<tr>
				<td class="dif">Email</td>
				<td><%=user.getEmail() %></td>
			</tr>
			<tr>
				<td class="dif">F. de Nacimiento</td>
				<td><%=date.format(user.getCreated()) %></td>
			</tr>
			<tr>
				<td class="dif">Estatus</td>
				<td><%=estatus %></td>
			</tr>
			<tr>
				<td class="dif">Genero</td>
				<td><%=gender %></td>
			</tr>
			<tr>
				<td class="dif">Rol</td>
				<td><%=role.getName() %></td>
			</tr>
			<tr>
				<td class="dif">Creación</td>
				<td><%=date.format(user.getCreated()) %></td>
			</tr>
		</table>
		</div>
		<div class="container">
		<br><a href="/users/delete?action=userDelete&userId=<%=user.getId()%>">Eliminar Usuario</a>
		<br><a href="/users/update?action=userUpdate&userId=<%=user.getId()%>">Actualizar Usuario</a>
		<br><div><%=mensaje%></div>
		</div>
	</body>
</html>