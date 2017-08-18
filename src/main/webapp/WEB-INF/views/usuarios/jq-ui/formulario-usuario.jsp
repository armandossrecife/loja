<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Usuário</title>
</head>
<body>
	<div title="Cria nova usuário">
		<form action="salvaUsuario" method="post">
			<div>
				<label>Nome</label>
				<form:input path="usuario.nome"
					class="text ui-widget-content ui-corner-all" />
			</div>
			<div>
				<label>E-mail</label>
				<form:input path="usuario.email"
					class="text ui-widget-content ui-corner-all" />
			</div>
			<div>
				<label>Usuario</label>
				<form:input path="usuario.login"
					class="text ui-widget-content ui-corner-all" />
			</div>
			<div>
				<label>Senha</label>
				<form:password path="usuario.senha"
					class="text ui-widget-content ui-corner-all" />
			</div>
			<div>
				<button type="submit" class="ui-button ui-widget ui-corner-all">
					<span class="ui-icon ui-icon-document"></span> Cadastrar
				</button>
			</div>
		</form>
		<br> <a href="/loja">Home</a>
	</div>

</body>
</html>