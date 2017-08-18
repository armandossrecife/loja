<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros sobre Tecnologia</title>
<!-- Defina as referencias para os arquivos de eslito (css) -->
<link rel="stylesheet" href="resources/jquery-ui/themes/base/jquery-ui.css" />
<link rel="stylesheet" href="resources/css/meus-estilos.css" />

<!-- Definas as referencias para os arquivos javascripts das biblitecas Jquery e Jquery UI-->
<script type="text/javascript"
	src="resources/jquery-ui/external/jquery/jquery.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/minhas-funcoes-visao.js"></script>
<script type="text/javascript" src="resources/js/my-jquery.js"></script>

</head>

<body onload="mostraMensagemErro(${mensagem})">
	<br>
	<a href="/loja/listaProdutos">Lista Produtos</a>
	<br>
	<a href="/loja/novoProduto">Cadastra Produto</a>
	<br>
	<a href="/loja/listaUsuarios">Lista de Usuários</a>
	<br>
	<a href="/loja/novoUsuario">Novo usuário</a>
	<br>
	<a href="/loja/logout">Logout</a>

	<div id="mensagemErro"
		class="ui-state-error ui-corner-all mensagemErro"
		style="padding: 0 .7em;">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin-right: .3em;"></span> <strong>Alerta:
			</strong>${mensagem}</p>
	</div>
</body>
</html>