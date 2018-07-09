<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Resource"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%List<Resource> recursos=(List<Resource>)request.getAttribute("recursos");
	SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd");
	String estado="";%>
<!DOCTYPE>
<html>
	<head>
		<title>Recursos</title>
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
		<li><a href="/resources/add">Crear Recurso</a></li>
		</ul>
		</nav>
		<h1>Búsqueda de Recursos</h1>
		<% if (recursos.size() > 0) { %>
			<span class="heading"><% out.println(recursos.size());%> recursos obtenidos:</span><br>
			<table class="table table-hover">
				<tr>
					<td class="dif">Nombre</td>
					<td class="dif">Estado</td>
				</tr>
			<% for (int i = 0;i<recursos.size();i++) { %>
				<% Resource p = (Resource)recursos.get(i); %>
				<% if(p.isStatus()){
					estado="Activado";
					}else{
					estado="Desactivado";
					}%>
				<tr>
					<td><a href="resources/view?resourceId=<%=p.getId()%>">
					<%=p.getUrl() %></a></td>
					<td><%=estado %></td>
				</tr>
			<% } %>
			</table>
		<% } else { %>
			<span class="heading">No se encontraron recursos coincidentes.</span>
		<%} %>
	</div>
	</body>
</html>