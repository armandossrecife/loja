<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html><head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Loja de Livros</title>
	
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/sticky-footer-navbar.css" rel="stylesheet"> 
       <!-- Custom styles for this template -->
    <link href="resources/css/starter-template.css" rel="stylesheet">
    <link href="resources/open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet"">
	<script src="resources/js/bootstrap-filestyle.min.js"></script>
</head>

<body onload="mostraMensagem(${mensagem})">

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
						<li><a href="/loja/loginForm">Entrar</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<br>
	<div class="container">
		<div class="row-fluid">
			<div class="span6 well">
				<h3 class="header text-center">Acesse sua conta</h3>
				<hr>
				<div class="alert alert-info">
					<span class="glyphicon glyphicon-exclamation-sign"></span> - Informe Usuário e Senha
				</div>
				<form action="efetuaLogin" method="post">
					<div class="form-group">
						<label for="user">Usuário:</label> <input type="text"
							class="form-control" id="user" name="login" required>
					</div>

					<div class="form-group">
						<label for="pwd">Senha:</label> <input type="password"
							class="form-control" id="pwd" name="senha" required>
					</div>

					<div class="checkbox">
						<label><span class="glyphicon glyphicon-user"></span> | <a href="/loja/novoUsuarioExterno">Cadastre-se</a></label>
						<label><span class="glyphicon glyphicon-envelope"></span> | <a href="#">Esqueceu a senha?</a>
						</label>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Entrar</button>
				</form>
			</div>
		</div>
		<!-- /container -->

		<div id="hidden_div_danger"
			class="alert alert-danger alert-dismissible">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<span class="oi oi-warning"></span> - ${mensagem}
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

	<script type="text/javascript">
		function mostraMensagem(valor) {
			if (valor != null){
				document.getElementById('hidden_div_danger').style.display = "block";
			}else {
				document.getElementById('hidden_div_danger').style.display = "none";
			}
		}
	</script>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-filestyle.min.js"></script>
</body></html>