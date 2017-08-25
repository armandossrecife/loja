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

<div class="container">
  <!-- Default panel contents -->
  				<h2 class="text-center">Livros</h2>
				<hr>
  <div class="panel-heading">Lista de Livros já cadastrados</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<td>Título</td>
					<td>Descrição</td>
					<td>Páginas</td>
					<td>Ação</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos }" var="produto">
					<tr>
						<td>${produto.titulo}</td>
						<td>${produto.descricao }</td>
						<td>${produto.paginas }</td>
						<td>Alterar | Excluir</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			<h3>${mensagemSucesso}</h3>
		<div>
			<button type="submit" class="btn btn-primary btn-block"
				onclick="window.location.href='/loja'">Volta</button>
			<button type="submit" class="btn btn-primary btn-block"
				onclick="window.location.href='/loja/novoProduto'">Novo</button>
		</div>
	</div>

</body>
</html>