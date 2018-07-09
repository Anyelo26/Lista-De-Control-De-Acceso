<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.entity.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<%
	Roles role = (Roles)request.getAttribute("role");
	String estado="Activo";
	if(role.isStatus()==false){estado="No Activo";}
	SimpleDateFormat date=new SimpleDateFormat("yy/MM/dd");
%>
<!DOCTYPE>
<html>
	<head>
		<title>Caracteristicas del Rol</title>
		<link rel="stylesheet" type="text/css" href="/stylesheets/styles.css"/>
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
		<h1>Visualización del Rol</h1>
		</div>
		<div class="container">
			<table class="table table-hover">
				<tr>
					<td class="dif">Nombre</td>
					<td><%= role.getName() %></td>
				</tr>
				<tr>
					<td class="dif">Estado</td>
					<td><%=estado %></td>
				</tr>
				<tr>
					<td class="dif">Creación</td>
					<td><%=date.format(role.getCreated()) %></td>
				</tr>
			</table>
		</div>
		<div class="container">
		<br><a href="/roles/delete?action=roleDelete&roleId=<%=role.getId()%>">Eliminar Rol</a>
		<br><a href="/roles/update?action=roleUpdate&roleId=<%=role.getId()%>">Actualizar Rol</a>
		<br><div><%=mensaje%></div>
		</div>	
	</body>
</html>