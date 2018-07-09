<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Roles"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%List<Roles> roles=(List<Roles>)request.getAttribute("roles");
	SimpleDateFormat date=new SimpleDateFormat("yy/MM/dd");
	String estado="";%>
<!DOCTYPE >
<html>
	<head>
		<title>Roles</title>
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
			<li><a href="/roles/add">Crear Rol</a></li>
		</ul>
		</nav>
		</div>
		<div class="container">
		<h1>Búsqueda de Roles</h1>
		<% if (roles.size() > 0) { %>
			<span class="heading"><% out.println(roles.size());%> roles obtenidos:</span><br>
		</div>	
			<div class="container">
			<table class="table table-hover">
				<tr>
					<td class="dif">Nombre</td>
					<td class="dif">Estado</td>
					<td class="dif">F. de Creacion</td>
				</tr>
			<% for (int i = 0;i<roles.size();i++) { %>
				<% Roles p = (Roles)roles.get(i); %>
				<% if(p.isStatus()){
					estado="Activo";
					}else{
					estado="No Activo";
					}%>
				<tr>
					<td><a href="roles/view?roleId=<%=p.getId()%>">
					<%=p.getName() %></a></td>
					<td><%=estado %></td>
					<td><%=date.format(p.getCreated()) %></td>
					<td>   </td>
				</tr>
			<% } %>
			</table>
			</div>
		<% } else { %>
			<span class="heading">No se encontraron roles coincidentes.</span>
		<%} %>
	</body>
</html>