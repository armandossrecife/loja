<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html><head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Loja de Livros</title>
	
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/sticky-footer-navbar.css" rel="stylesheet"> 
       <!-- Custom styles for this template -->
    <link href="resources/css/starter-template.css" rel="stylesheet">
	<script src="resources/js/bootstrap-filestyle.min.js"></script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	function validarSenha() {
		senha = document.FormSolicitaUsuario.senha.value;
		confirmaSenha = document.FormSolicitaUsuario.confirmasenha.value;

		if (senha != confirmaSenha) {
			alert("Senha não confere");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>

<body>

	<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <figure class="logo">
                <a class="navbar-brand topnav" href="/loja"><span class="glyphicon glyphicon-education"></span> - Loja de Livros</a>
                </figure>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            	<ul class="nav navbar-nav">				
				</ul>
                <ul class="nav navbar-nav navbar-right">
						<li><a href="/loja">Início</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<div class="container-fluid">
		<div class="container">
			<div class="panel panel-default">

				<form action="salvaUsuarioExterno" id="FormSolicitaUsuario" name="FormSolicitaUsuario" method="post" onsubmit="return validarSenha();">
					<h2 class="text-center">Solicita Cadastro de Usuario</h2>
				 	<div class="form-group">
						<label>Nome</label>
						<input name="nome" class="form-control" required/>
					</div>
					<div class="form-group">
						<label>E-mail</label>
						<input name="email" class="form-control" required/>
					</div>
					<div class="form-group">
						<label>Usuario</label>
						<input name="login" class="form-control" required/>
					</div>
					<div class="form-group">
						<label>Senha</label>
						<input type="password" id="senha" name="senha" class="form-control" required/>
					</div>
					<div class="form-group">
						<label>Confirma Senha</label>
						<input type="password" id="confirmasenha" name="confirmasenha" class="form-control" required/>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">
							Enviar pedido de cadastro</button>
					</div>
				</form>

			</div>
			<div class="alert alert-info">
			<strong>Info!</strong> Ao enviar o pedido de cadastro de novo
			usuário, a solicitação será analisada e caso seja aceita o usuário
			receberá uma notificação de ativação do usuário.
			</div>
		</div>

	</div>

	<footer class="footer">
    <div class="container">
            <div class="span6 pull-left text-left">
                <span class="copyright-content">©&nbsp;COPYLEFT 2017. </span>
            </div>
            <div class="span6 pull-right text-right">
                <span>Oficina de Introdução a Aplicações Web <a href="http://www.ufpi.br" target="_blank" title="ENGENHARIA DE SOFTWARE 2/DC/UFPI">ES2/DC/UFPI</a></span>
            </div>
    </div>
</footer>
</body>
</html>