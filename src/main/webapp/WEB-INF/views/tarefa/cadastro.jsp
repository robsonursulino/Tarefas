<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Cadastro de tarefas</title>
	</head>
	
	<body>
		<h3>Adicionar tarefas</h3>
		<form:errors path="tarefa.descricao" cssStyle="color: red" />
		<br>
		<form action="adicionaTarefa" method="post">
			Descrição
			<br>
			<textarea rows="10" cols="100" name="descricao"></textarea>
			<br>
			<input type="submit" value="Salvar">
		</form>
	</body>
</html>