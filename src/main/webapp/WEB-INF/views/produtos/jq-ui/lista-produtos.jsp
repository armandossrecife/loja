<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Defina as referencias para os arquivos de eslito (css) -->
<link rel="stylesheet" href="resources/jquery-ui/themes/base/jquery-ui.css" />
<link rel="stylesheet" href="resources/css/meus-estilos.css" />

<!-- Definas as referencias para os arquivos javascripts das biblitecas Jquery e Jquery UI-->
<script type="text/javascript" src="resources/jquery-ui/external/jquery/jquery.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/minhas-funcoes-visao.js"></script>
<script type="text/javascript" src="resources/js/my-jquery.js"></script>

<meta charset=UTF-8>
<title>Livros sobre Tecnologia</title>

</head>
<body>
	<div class="ui-widget">
		<h1>Lista de Livros já cadastrados</h1>	
		<table class="ui-widget ui-widget-content">
			<thead class="ui-widget-header">
				<tr>
					<td>Título</td>
					<td>Descrição</td>
					<td>Páginas</td>
					<td>Ação</td>
				</tr>
			</thead>
			<tbody class="ui-widget-content">
				<c:forEach items="${produtos }" var="produto">
					<tr>
						<td>${produto.titulo}</td>
						<td><span class="ui-icon ui-icon-comment"
							style="margin: 0 2px 0 2px; float: left;"></span>
							${produto.descricao }</td>
						<td>${produto.paginas }</td>
						<td><span class="ui-icon ui-icon-copy"></span> Alterar <span class="ui-icon ui-icon-closethick"></span> Excluir</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<h3>${mensagemSucesso}</h3>
	<div>
		<button type="submit" class="ui-button ui-widget ui-corner-all" onclick="window.location.href='/loja'">
			<span class="ui-icon ui-icon-circle-arrow-w"></span> Volta
		</button>
		<button type="submit" class="ui-button ui-widget ui-corner-all" onclick="window.location.href='/loja'">
			<span class="ui-icon ui-icon-document"></span> Novo
		</button>
	</div>
</body>
</html>