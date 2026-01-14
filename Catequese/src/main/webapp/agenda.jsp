<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="br.com.kaio.model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contato");
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda de contatos</title>
<link rel="icon"
	href="file:///D:/ProjetosJEE/Catequese/src/main/webapp/img/phone-call_6351615.png">
<link rel="icon" href="img/phone-call_6351615.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de contatos</h1>
	<a href="novo.html" class="btn"
		style="text-decoration: none; background-color: #66bbff; padding: 5px 10px 5px 10px; color: #ffffff; font-size: 1.2rem; font-weight: 700; border-radius: 5px;">Novo
		Contato</a>
	<a href="report" class="btn"
		style="text-decoration: none; background-color: red; padding: 5px 10px 5px 10px; color: #ffffff; font-size: 1.2rem; font-weight: 700; border-radius: 5px;">Novo
		Relatório</a>

	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Fone</th>
				<th>E-mail</th>
				<th>Opções</th>
				<th>Remover</th>
			</tr>
		</thead>

		<tbody>

			<%
			for (JavaBeans c : lista) {
			%>
			<tr>
				<td><%=c.getIdcon()%></td>
				<td><%=c.getNome()%></td>
				<td><%=c.getFone()%></td>
				<td><%=c.getEmail()%></td>
				<td><a href="select?idcon=<%=c.getIdcon()%>>" class="btn">Editar</a></td>
				<td><a href="javascript: confirmar(<%=c.getIdcon()%>)"
					class="btn remover"
					style="text-decoration: none; background-color: red;">Remover</a></td>
			</tr>
			<%
			}
			%>

		</tbody>

	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>