<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="model.entity.*"%>
<%
	Pez pescadito = (Pez) request.getAttribute("Pez");
%>
<html>
<head>
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link rel="stylesheet" href="/Estilos/css/bootstrap.min.css">
<link rel="stylesheet" href="/Estilos/estilos.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Peces(CRUD)</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col md-5 col-md-offset-1 col xs-5 col-xs-offset-1" id="table">
	<span class="nav"><a href="/peces?action=PezLookup">Catalogo</a></span><br>
	<div class="form-group"><span class="title">Caracteristicas:</span></div>
	<table  class="table table-bordered" >
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Codigo:</td>
			<td bgcolor="#ffffff"><%= pescadito.getId() %></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Nombre:</td>
			<td bgcolor="#ffffff"><%= pescadito.getNombre() %></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Orden:</td>
			<td bgcolor="#ffffff"><%=pescadito.getOrden()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Familia:</td>
			<td bgcolor="#ffffff"><%=pescadito.getFamilia()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Género:</td>
			<td bgcolor="#ffffff"><%=pescadito.getGenero()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Precio</td>
			<td bgcolor="#ffffff"><%=pescadito.getPrecio()%></td>
		</tr>
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Stock:</td>
			<td bgcolor="#ffffff"><%=pescadito.getStock()%></td>
		</tr>
	</table>
	</div>
	</div>
	</div>
</body>
</html>