<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista todos os produtos cadastrados</title>
<!-- Defina as referencias para os arquivos de eslito (css) -->
<link rel="stylesheet" href="resources/jquery-ui/themes/base/jquery-ui.css" />
<link rel="stylesheet" href="resources/css/meus-estilos.css" />

<!-- Definas as referencias para os arquivos javascripts das biblitecas Jquery e Jquery UI-->
<script type="text/javascript" src="resources/jquery-ui/external/jquery/jquery.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/minhas-funcoes-visao.js"></script>
<script type="text/javascript" src="resources/js/my-jquery.js"></script>
</head>
<body>
<!-- Pode usar um formulario modal https://jqueryui.com/resources/demos/dialog/modal-form.html -->
<form action="salvaProduto" method="post" enctype="multipart/form-data">
        <div>
            <label>Título</label> 
             <form:input path="produto.titulo" />
            <form:errors path="produto.titulo" />
        </div>
        <div>
            <label>Descrição</label>
             <form:textarea rows="10" cols="20" path="produto.descricao" />
            <form:errors path="produto.descricao" />
        </div>

        <div>
        	<label>Páginas</label>
            <form:input path="produto.paginas" />
            <form:errors path="produto.paginas" />
        </div>
		<div>
			<label>Data de Lançamento</label>
			<form:input path="produto.dataLancamento" />
			<form:errors path="produto.dataLancamento" />
		</div>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
            <div>
                <label>${tipoPreco}</label>
                <form:input path="produto.precos[${status.index}].valor" /> 
            	<form:hidden path="produto.precos[${status.index}].tipo" value="${tipoPreco}" />
            </div>
        </c:forEach>
         <div>
        	<label>Sumário</label>
       		<input name="sumario" type="file" />
    	</div>
        <button type="submit">Cadastrar</button>
    </form>
     <br>
	<a href="/loja">Home</a>
</body>
</html>