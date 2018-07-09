<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Users"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="model.entity.Roles"%>
<% List<Roles> roles=(List<Roles>)request.getAttribute("roles");%>
<% String mensaje=(String)request.getAttribute("mensaje");if(mensaje==null){mensaje="";}%>
<% Users u = (Users)request.getAttribute("user");String option1="",option2="";%>
<%if(u.isStatus()==false){option1="selected";}
	SimpleDateFormat date=new SimpleDateFormat("dd/MM/yy");
%>
<%if(u.isGender()==false){option2="selected";}%>
<!DOCTYPE >
<html>
	<head>
		<title>Actualizacion de Usuario</title>
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
		</ul>
		</nav>
	</div>
	<div class="container">
		<span class="nav"><a href="/users">Regresar al Menú</a></span>
		<h1>Actualizar un Usuario</h1>
		<form  class="form-inline " method="get" action="/users/update">
			<input type="hidden" name="action" value="userEditDo"/>
			<table class="table table-bordered table-hover" >
				<tr>
					<td class="dif">Email</td>
					<td><input type="text" name="email" value="<%=u.getEmail() %>" pattern="([A-Za-z0-9]|_|\.|-|@)+"></td>
				</tr>
				<tr>
					<td class="dif">F. de Nacimiento</td>
					<td>
						<input type="date" name="birth" value="<%=date.format(u.getCreated()) %>"required>
					</td>
				</tr>
				<tr>
					<td class="dif">Estado</td>
					<td>
						<select name="estatus">
						  <option value="Activado">Activado</option>
						  <option value="Desactivado" <%=option1%>>Desactivado</option>
						</select></td>
				</tr>
				<tr>
					<td class="dif">Genero</td>
					<td>
						<select name="gender">
						  <option value="Masculino">Masculino</option>
						  <option value="Femenino" <%=option2%>>Femenino</option>
						</select></td>
				</tr>
				<tr>
					<td class="dif">Rol</td>
					<td>
						<select name="idRole">
						<%for(int i=0;i<roles.size();i++){
							Roles r=roles.get(i);
							String act="";
							if(r.getId().equals(u.getIdRole())){
								act=" selected";
							}
							out.print("<option value=\""+r.getId()+"\""+act+">"+r.getName()+"</option>");
						}%>
						</select></td>
				</tr>
				<tr class="dif">
					<td colspan="2"><input type="submit" value="Subir"></td>
				</tr>
			</table>
			<input type="hidden" name="userId" value="<%=u.getId()%>"/>
		</form>
		<br><div><%=mensaje%></div>
		</div>
	</body>
</html>