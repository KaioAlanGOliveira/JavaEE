<!DOCTYPE html>
<html lang="pt_br">
<head>
<meta charset="UTF-8">
<title>Agenda de contatos</title>
<link rel="icon" href="img/phone-call_6351615.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Editarcontato</h1>
	<form action="update" name="frmContato">
		<table>
			<tr>
				<td><input type="text" name="idcon" class="inp3"
					readonly="readonly"
					value="<%out.print(request.getAttribute("idcon"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="nome" class="inp1"
					value="<%out.print(request.getAttribute("nome"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="fone" class="inp2"
					value="<%out.print(request.getAttribute("email"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="email" class="inp1"
					value="<%out.print(request.getAttribute("fone"));%>"></td>
			</tr>
		</table>
		<input type="button" value="Salvar" class="btn" onclick="validacao()">
	</form>
	<script src="scripts/validador.js"></script>
</body>
</html>