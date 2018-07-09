<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Users"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%List<Users> users=(List<Users>)request.getAttribute("users");
	String[]rolesName=(String[])request.getAttribute("rolesName");
	SimpleDateFormat date=new SimpleDateFormat("yy/MM/dd");
	String estatus="",gender="";%>
<!DOCTYPE >
<html>
	<head>
		<title>Usuarios</title>
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
		<li><a href="/users/add">Agregar Usuario</a></li>
		</ul>
		</nav>
	</div>
		<div class="container">
		<h1>Usuarios</h1>
		<% if (users.size() > 0) { %>
			<span class="heading"><% out.println(users.size());%> usuarios </span><br>
			<table class="table table-hover">
				<tr>
					<td class="dif">Email</td>
					<td class="dif">F. de Nacimiento</td>
					<td class="dif">Estatus</td>
					<td class="dif">Genero</td>
					<td class="dif">Rol</td>
					<td class="dif">F. de Creacion</td>
				</tr>
			<% for (int i = 0;i<users.size();i++) { %>
				<% Users u = (Users)users.get(i); %>
				<% if(u.isStatus()){
					estatus="Activado";
					}else{
					estatus="Desactivado";
					}
					if(u.isGender()){
					gender="Masculino";
					}else{
					gender="Femenino";
					}%>
				<tr>
					<td><a href="users/view?userId=<%=u.getId()%>">
					<%=u.getEmail() %></a></td>
					<td><%=date.format(u.getCreated()) %></td>
					<td><%=estatus%></td>
					<td><%=gender%></td>
					<td><%=rolesName[i] %></td>
					<td><%=date.format(u.getCreated()) %></td>
				</tr>
			<% } %>
			</table>
		<% } else { %>
			<span class="heading">No se encontraron usuarios coincidentes.</span>
		<%} %>
		</div>
	</body>
</html>