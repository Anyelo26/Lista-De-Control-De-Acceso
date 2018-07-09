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
<body>
	<div class="row container" id="table" style="margin-left:24%">
	<div class="col xs-7 col-xs-offset-5 col md-6 col-md-offset-6 col sm-7 col-sm-offset-5" >
	<span class="nav"><a href="/peces?action=PezLookup">Catalogo</a></span ><br>
	<div class="form-group"><span class="title">Agregar un Nuevo Pez</span></div>
	<form method="Get" action="/peces/add" >
		<input type="hidden" name="action" value="PezCreateDo" />
		<table class="table table-bordered" >
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Nombre: </td>
				<td bgcolor="#ffffff"><input type="text" name="Nombre" required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Orden:</td>
				<td bgcolor="#ffffff"><input type="text" name="Orden"required></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Familia:</td>

				<td bgcolor="#ffffff"><input type="text" name="Familia" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Genero: </td>
				<td bgcolor="#ffffff"><input type="text" name="Genero" placeholder="opcional"></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Precio: </td>
				<td bgcolor="#ffffff"><input type="number" name="Precio" pattern ="^\d{1,3}(?:,\s?\d{3})*(?:\.\d*)?$" required ></td>
			</tr>
			<tr bgcolor="#407BA8">
				<td style="color: #ffffff; font-weight: bold;">Stock: </td>
				<td bgcolor="#ffffff"><input type="number" name="Stock" required></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#ffffff" align="center">
				<input type="submit" value="Submit" class="btn btn-primary"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</body>
</html>
