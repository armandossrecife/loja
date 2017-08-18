<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html><head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Loja de Livros</title>
	
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
       <!-- Custom styles for this template -->
    <link href="resources/css/starter-template.css" rel="stylesheet">
	<script src="resources/js/bootstrap-filestyle.min.js"></script>
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
                <a class="navbar-brand topnav" href="/loja"><img src="resources/minhas-imagens/logo.png" width="25" height="25"></a>
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

				<form action="salvaUsuario" method="post">
					<h2 class="text-center">Cadastra Usuario</h2>
					<div class="form-group">
						<label>Nome</label>
						<form:input path="usuario.nome" class="form-control" />
					</div>
					<div class="form-group">
						<label>E-mail</label>
						<form:input path="usuario.email" class="form-control" />
					</div>
					<div class="form-group">
						<label>Usuario</label>
						<form:input path="usuario.login" class="form-control" />
					</div>
					<div class="form-group">
						<label>Senha</label>
						<form:password path="usuario.senha" class="form-control" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">
							Cadastrar</button>
					</div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>