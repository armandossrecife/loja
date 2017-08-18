<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Cadastro de Usuário</title>

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
<div id="dialog-form" title="Cria novo usuário">
	<p class="validateTips">Todos os campos são obrigatórios</p>
	<form>
		<fieldset>
			<label for="nome">Nome</label>
			<input type="text" name="nome" id="nome" value="Armando Soares" class="text ui-widget-content ui-corner-all">
			<label for="email">Email</label>
			<input type="text" name="email" id="email" value="armando@ufpi.edu.br" class="text ui-widget-content ui-corner-all">
			<label for="senha">Password</label>
			<input type="password" name="senha" id="senha" value="xxxxxxx" class="text ui-widget-content ui-corner-all">
			<!-- Allow form submission with keyboard without duplicating the dialog button -->
			<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
		</fieldset>
	</form>
</div>

<div id="users-contain" class="ui-widget">
	<h1>Usuários já cadastrados</h1>
	<table id="users" class="ui-widget ui-widget-content">
		<thead>
			<tr class="ui-widget-header ">
				<th>Nome</th>
				<th>Email</th>
				<th>senha</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Jonh Doe</td>
				<td><a class="__cf_email__" href="/cdn-cgi/l/email-protection" data-cfemail="3f55505751115b505a7f5a475e524f535a115c5052">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName('script'),e=t.length;e--;)if(t[e].getAttribute('data-cfhash'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute('data-cfemail')){for(e='',r='0x'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+='%'+('0'+('0x'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */</script></td>
				<td>jonh</td>
			</tr>

        <c:forEach items="${usuarios }" var="usuario">
            <tr>
                <td>${usuario.nome}</td>
                <td><span class="ui-icon ui-icon-mail-closed" style="margin: 0 2px 0 2px; float:left;"></span> ${usuario.email }</td>
                <td>${usuario.senha }</td>
            </tr>
        </c:forEach>

		</tbody>
	</table>
</div>
<button id="create-user">Novo Usuário</button>

</body>
</html>