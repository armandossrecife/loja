<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Loja de Livros</title>
	
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/sticky-footer-navbar.css" rel="stylesheet"> 
       <!-- Custom styles for this template -->
    <link href="resources/css/starter-template.css" rel="stylesheet">
	<link href="resources/css/meus-estilos.css" rel="stylesheet">
	<script src="resources/js/bootstrap-filestyle.min.js"></script>
	
</head>

<body onload="showDiv2(${tipoMensagem})">

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
					<a class="navbar-brand topnav" href="/loja"><span
						class="glyphicon glyphicon-education"></span> - Loja de Livros</a>
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

	<div class="container">
		<div class="container-fluid">
			<div class="container">
				<div class="panel panel-default panel-login">
					<form action="efetuaLogin" method="post">
						<h2 class="text-center">Acesse sua conta</h2>
						<hr>
						<div class="form-group">
							<label for="user">Usuário:</label> <input type="text"
								class="form-control" id="user" name="login">
						</div>
						<div class="form-group">
							<label for="pwd">Senha:</label> <input type="password"
								class="form-control" id="pwd" name="senha">
						</div>
						<div class="checkbox">
							<label> <a href="/loja/novoUsuarioExterno">Cadastre-se</a></label> <label>
								<a href="/loja/esqueceuSenha">Esqueceu a senha?</a>
							</label>
						</div>
						<button type="submit" class="btn btn-primary btn-block">Entrar</button>
					</form>
				</div>

			</div>
			<!-- /container -->

			<div class="container">
				<div id="hidden_div_success" class="alert alert-success alert-dismissible">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Successo!</strong> ${mensagem}
				</div>
				<div id="hidden_div_info" class="alert alert-info alert-dismissible">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Info!</strong> ${mensagem}
				</div>
				<div id="hidden_div_warning" class="alert alert-warning alert-dismissible">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Warning!</strong> ${mensagem}
				</div>
				<div id="hidden_div_danger" class="alert alert-danger alert-dismissible">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong>Danger!</strong> ${mensagem}
				</div>
			</div>

		</div>

	</div>

	<script type="text/javascript">
		function showDiv2(valor) {
			switch(valor){
			case 1:
				document.getElementById('hidden_div_success').style.display = "block";
				document.getElementById('hidden_div_info').style.display = "none";
				document.getElementById('hidden_div_warning').style.display = "none";
				document.getElementById('hidden_div_danger').style.display = "none";
			break;
			case 2:
				document.getElementById('hidden_div_success').style.display = "none";
				document.getElementById('hidden_div_info').style.display = "block";
				document.getElementById('hidden_div_warning').style.display = "none";
				document.getElementById('hidden_div_danger').style.display = "none";
			break;
			case 3:
				document.getElementById('hidden_div_success').style.display = "none";
				document.getElementById('hidden_div_info').style.display = "none";
				document.getElementById('hidden_div_warning').style.display = "block";
				document.getElementById('hidden_div_danger').style.display = "none";
			break;
			case 4:
				document.getElementById('hidden_div_success').style.display = "none";
				document.getElementById('hidden_div_info').style.display = "none";
				document.getElementById('hidden_div_warning').style.display = "none";
				document.getElementById('hidden_div_danger').style.display = "block";
			default: 
				document.getElementById('hidden_div_success').style.display = "none";
				document.getElementById('hidden_div_info').style.display = "none";
				document.getElementById('hidden_div_warning').style.display = "none";
				document.getElementById('hidden_div_danger').style.display = "none";	
		}
	}
		</script>

	
	<script>
		$(document).ready(function(){
			$(document).on('click', '.confirmation-modal', function(e){
				e.preventDefault();
				var $this = $(this), 
					$modal = $('#generic-modal'),
					body = $this.data('conf-modal-body');
				if(body){
					$modal.find('.modal-body').html(body);
				}
				$modal.modal('show');
				$modal.find('#generic-modal-confirmation').unbind('click').on('click', function(e){
					document.location.href = $this.attr('href');
				});
			});
		});
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-filestyle.min.js"></script>
</body></html>