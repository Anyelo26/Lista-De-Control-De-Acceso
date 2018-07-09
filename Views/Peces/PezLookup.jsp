
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<%List<Pez> peces = (List<Pez>) request.getAttribute("Peces");%>
<html>
<head>
<meta name="viewport"
	content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link rel="stylesheet" href="/Estilos/css/bootstrap.min.css">
<link rel="stylesheet" href="/Estilos/estilos.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title></title>
<link rel="stylesheet" type="text/css" href="/Estilos/Base.css" />
<link rel="stylesheet" type="text/css" href="/Estilos/PezStyle.css" />
</head>
<body class="cuerpo">
	<%
				if (peces.size() > 0) {
			%>
	<div class="container">	
	<table style="margin-left: 0.1%" id="tableStyle">
		<tr>
			<td><span class="heading">Hay <%=peces.size()%> Peces en
					la Lista
			</span></td>
			<td><a href="/peces/add">Agregar Nuevo Pez</a></td>
			<td style="font-size: 160%"><a href="/access?action=PezLookup"><span
					class="heading">Menú</span></a></td>
		</tr>
	</table>
	<table  class="table table-hover">
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Nombre</td>
			<td style="color: #ffffff; font-weight: bold;">Precio</td>
			<td style="color: #ffffff; font-weight: bold;">Stock</td>
			<td style="color: #ffffff; font-weight: bold;">Operaciones</td>
		</tr>
		<%
					for (int i = 0; i < peces.size(); i++) {
				%>
		<%
					Pez a = (Pez) peces.get(i);
				%>
		<tr style="background: #ffffff"
			onMouseOver="this.style.background='#eeeeee';"
			onMouseOut="this.style.background='#ffffff';">
			<td><a href="/peces/view?action=PezDisplay&PezId=<%=a.getId()%>"><%=a.getNombre()%></a></td>
			<td><%=a.getPrecio()%></td>
			<td><%=a.getStock()%></td>
			<td><a href="/peces/update?action=Actualizar&PezId=<%=a.getId()%>">Editar</a>
				<a href="/peces/delete?action=Eliminar&PezId=<%=a.getId()%>">Eliminar</a>
			</td>
		</tr>
		<%
					}
				%>
	</table>
	</div>	
	<%
				} else {
			%>
	<span class="heading">No Hay Peces</span>
	<br>
	<a href="access">Atrás</a>
	<a href="/peces/add">Agregar Pez</a>
	<%
				}
			%>
</body>
</html>