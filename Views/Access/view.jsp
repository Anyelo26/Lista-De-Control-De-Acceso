<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.entity.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<%
	Access a = (Access)request.getAttribute("access");
	Roles role = (Roles)request.getAttribute("role");
	Resource resource = (Resource)request.getAttribute("resource");
	String estado="Activado";
	if(a.isStatus()==false){estado="Desactivado";}
	SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Caracteristicas del Acceso</title>
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
		<li><a href="/access">Regresar al Menú</a></li>
		</ul>
		</nav>
		<h1>Visualización del Acceso</h1>
		<table class="table table-hover">
			<tr>
				<td class="dif">Rol</td>
				<td><%=role.getName() %></td>
			</tr>
			<tr>
				<td class="dif">Recurso</td>
				<td><%=resource.getUrl() %></td>
			</tr>
			<tr>
				<td class="dif">Estado</td>
				<td><%=estado %></td>
			</tr>
		</table>
		<br><a href="/access/delete?action=accessDelete&accessId=<%=a.getId()%>">Eliminar Acceso</a>
		<br><a href="/access/update?action=accessUpdate&accessId=<%=a.getId()%>">Actualizar Acceso</a>
		<br><div><%=mensaje%></div>
	</div>
	</body>
</html>