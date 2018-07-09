<%@ page import="model.entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name ="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimium-scale=1.0">
<link rel="stylesheet" href="/Estilos/css/bootstrap.min.css">
<link rel="stylesheet" href="/Estilos/estilos.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<title></title>
</head>
<%
Pez pescadito= (Pez)request.getAttribute("Pez");
%>
<body >
<div class="container" id="table" style="margin-left:25%" >
	<div class="col xs-9 col-xs-offset-3 col md-6 col-md-offset-5"  >
	<span class="nav"><a href="/peces?action=PezLookup">Catalogo</a></span><br>
	<div class="form-group"><span class="title">Editando el Pez</span></div>	
	<form method="Get" action="/peces/update" >
	<input type="hidden"  name="action" value="Update">
	<input type="hidden"  name="PezId" value="<%=pescadito.getId()%>">
		<table class="table table-bordered" >
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Codigo: </td>
				<td bgcolor="#ffffff"><input type="text" name="Codigo" value="<%=pescadito.getId()%>" readonly></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Nombre: </td>
				<td bgcolor="#ffffff"><input type="text" name="Nombre" value="<%=pescadito.getNombre()%>" required></td>
			</tr>
			<tr bgcolor="#407BA8">

				<td style="color: #ffffff; font-weight: bold;">Orden:</td>
				<td bgcolor="#ffffff"><input type="text" name="Orden" value="<%= pescadito.getOrden() %>" required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Familia:</td>

				<td bgcolor="#ffffff"><input type="text" name="Familia" value="<%=pescadito.getFamilia()%>" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Genero: </td>
				<td bgcolor="#ffffff"><input type="text" name="Genero" value="<%=pescadito.getGenero()%>" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Precio: </td>
				<td bgcolor="#ffffff"><input type="number" name="Precio" value="<%= pescadito.getPrecio()%>" pattern ="^\d{1,3}(?:,\s?\d{3})*(?:\.\d*)?$" required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Stock: </td>
				<td bgcolor="#ffffff"><input type="number" name="Stock" value="<%= pescadito.getStock()%>" required></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#ffffff" align="center"><br>
				 <input type="submit" value="Actualizar" class="btn btn-primary"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</body>
</html>
