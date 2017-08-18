<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lista Usuários Cadastrados</title>

	<!-- Defina as referencias para os arquivos de eslito (css) -->
	<link rel="stylesheet" href="resources/jquery-ui/themes/base/jquery-ui.css" />
	<link rel="stylesheet" href="resources/css/meus-estilos.css" />
	
	<!-- Definas as referencias para os arquivos javascripts das biblitecas Jquery e Jquery UI-->
	<script type="text/javascript" src="resources/jquery-ui/external/jquery/jquery.js"></script>
	<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
	<script type="text/javascript" src="resources/js/minhas-funcoes-visao.js"></script>
	<script type="text/javascript" src="resources/js/my-jquery.js"></script>
	<script type="text/javascript" src="resources/js/manipula-formularios.js"></script>

</head>
<body>

	<div class="ui-widget">
		<h1>Usuários já cadastrados</h1>
		<table id="users" class="ui-widget ui-widget-content">
			<thead class="ui-widget-header">
				<tr>
					<th>Nome</th>
					<th>Usuario</th>
					<th>Email</th>
					<th>Senha</th>
					<th>Ação</th>
				</tr>
			</thead>
			<tbody class="ui-widget-content">
				<c:forEach items="${usuarios }" var="usuario">
					<tr>
						<td>${usuario.nome}</td>
						<td>${usuario.login}</td>
						<td><span class="ui-icon ui-icon-mail-closed"
							style="margin: 0 2px 0 2px; float: left;"></span> ${usuario.email }</td>
						<td>${usuario.senha }</td>
						<td><span class="ui-icon ui-icon-copy"></span> Alterar <span
							class="ui-icon ui-icon-closethick"></span> Excluir</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<button type="submit" class="ui-button ui-widget ui-corner-all"
		onclick="window.location.href='/minhaloja/novoUsuario'">
		<span class="ui-icon ui-icon-document"></span> Novo
	</button>
</body>
</html>