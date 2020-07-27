<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<html>
<head>
		<link type="text/css" href="resources/css/jquery-ui.css" rel="stylesheet">
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		
		<input type="hidden" name="id" value="${tarefa.id}" />
		
		Descrição:<br />
		<textarea name="descricao" cols="100" rows="5"><%--
			--%>${tarefa.descricao}<%-- 
		--%></textarea>
		<br />
		
		Finalizado? <input type="checkbox" name="finalizado"
			value="true" ${tarefa.finalizado? 'checked' : ''}/> <br />
			
		Data de finalização: <br />	
		<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" var="dataFormatada"/>
		<caelum:campoData id="dataFinalizacao" value="${dataFormatada}" />
		<!-- <input type="text" name="dataFinalizacao"
			value="<fmt:formatDate
				value="${tarefa.dataFinalizacao.time}"
				pattern="dd/MM/yyyy" />" /> -->
		<br />
		
		<input type="submit" value="Alterar"/>
	</form>
</body>
</html>