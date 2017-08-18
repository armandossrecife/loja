<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

</head>
<body onload="mostraMensagemErro(${mensagem})">
<h1>Loja de Livros</h1>
	<form action="efetuaLogin" method="post">
		<fieldset>
			<legend>Login na Loja de Livros</legend>
			<div class="controlgroup-vertical">
				<div class="ui-widget">
					<label for="users">Usuário:</label><input id="users" name="login">
				</div>
				<div class="ui-widget">
					<label for="users">Senha:</label><input id="users" name="senha" type="password">
				</div>
				<div>
					<button type="submit" class="ui-button ui-widget ui-corner-all" >
						<span class="ui-icon ui-icon-unlocked"></span> Entrar na loja     
					</button>
				</div>
			</div>
			<div class="controlgroup-horizontal">
				<img alt="Login" src="resources/minhas-imagens/loja-livros.jpg" height="100" width="120">
			</div>
		</fieldset>
	</form>
	<!-- 
	<div id="mensagemAlerta" class="ui-state-highlight ui-corner-all" style="margin-top: 20px; padding: 0 .7em;" width="25%">
		<p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
		<strong>Hey!</strong> Sample ui-state-highlight style.</p>
	</div>
	-->
	<div id="mensagemErro" class="ui-state-error ui-corner-all mensagemErro" style="padding: 0 .7em;">
		<p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
		<strong>Alerta: </strong>${mensagem}</p>
	</div>
</body>
</html>