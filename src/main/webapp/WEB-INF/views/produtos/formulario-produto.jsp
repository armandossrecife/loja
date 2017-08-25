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

	<div class="container-fluid">
		<div class="container">
			<div class="panel panel-default">
				<form action="salvaProduto" method="post" enctype="multipart/form-data">
				<h2 class="text-center">Cadastra Livro</h2>
				<hr>
					<div class="form-group">
						<label>Título</label>
						<form:input path="produto.titulo" class="form-control"/>
						<form:errors path="produto.titulo" />
					</div>
					<div class="form-group">
						<label>Descrição</label>
						<form:textarea rows="10" cols="20" path="produto.descricao" class="form-control"/>
						<form:errors path="produto.descricao" />
					</div>
					<div  class="form-group">
						<label>Páginas</label>
						<form:input path="produto.paginas" class="form-control"/>
						<form:errors path="produto.paginas" />
					</div>
					<div  class="form-group">
						<label>Data de Lançamento</label>
						<form:input path="produto.dataLancamento" class="form-control"/>
						<form:errors path="produto.dataLancamento" />
					</div>
					<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
						<div  class="form-group">
							<label>${tipoPreco}</label>
							<form:input path="produto.precos[${status.index}].valor" class="form-control"/>
							<form:hidden path="produto.precos[${status.index}].tipo"
								value="${tipoPreco}" />
						</div>
					</c:forEach>
					<div  class="form-group">
						<label>Sumário</label> <input name="sumario" type="file" class="form-control"/>
					</div>
					<button type="submit"  class="btn btn-primary btn-block">Cadastrar</button>
				</form>

			</div>
		</div>
	</div>
	<!-- Pode usar um formulario modal https://jqueryui.com/resources/demos/dialog/modal-form.html -->
</body>
</html>