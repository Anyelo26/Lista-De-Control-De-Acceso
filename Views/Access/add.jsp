<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Roles"%>
<%@ page import="model.entity.Resource"%>
<% String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<% List<Roles> roles=(List<Roles>)request.getAttribute("roles");%>
<% List<Resource> recursos=(List<Resource>)request.getAttribute("resources");%>

<!DOCTYPE >
<html>

	<head>
		<title>Creacion de Acceso</title>
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
		<li><a href="/access">Regresar al Menú</a></li>
		</ul>
		</nav>
		<h1>Crear un nuevo Acceso</h1>
		<form class="form-inline" method="post" action="/access/add">
			<input type="hidden" name="action" value="accessCreateDo"/>
			<table class="table table-hover">
				<tr>
					<td class="dif">Rol</td>
					<td>
						<select name="idRole" required>
						<%for(int i=0;i<roles.size();i++){
							Roles r=roles.get(i);
							out.println("<option value=\""+r.getId()+"\">"+r.getName()+"</option>");
						}%>
						</select></td>
				</tr>
				<tr>
					<td class="dif">Recurso</td>
					<td>
						<select name="idUrl" required>
						<%for(int i=0;i<recursos.size();i++){
							Resource r=recursos.get(i);
							out.println("<option value=\""+r.getId()+"\">"+r.getUrl()+"</option>");
						}%>
						</select></td>
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
					<td colspan="2"><input type="submit" value="Subir"></td>
				</tr>
			</table>
		</form>
		<br><div><%=mensaje%></div>
	</div>
	</body>
</html>