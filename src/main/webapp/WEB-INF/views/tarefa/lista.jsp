<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Lista de tarefas</title>
	</head>
	
	<body>
		<a href="novaTarefa">Criar nova tarefa</a>
		<br>
		<br>
		<table>
			<tr>
				<th>ID</th>
				<th>Descrição</th>
				<th>Finalizado?</th>
				<th>Data de finalização</th>
			</tr>
			<c:forEach items="${tarefas}" var="tarefa">
				<tr>
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
					<td>${tarefa.finalizado}</td>
					<c:choose>
						<c:when test="${tarefa.finalizado == true}">
							<td>Finalizado</td>
						</c:when>
						<c:otherwise>
							<td>Não finalizado</td>
						</c:otherwise>
					</c:choose>
					<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" /></td>
				</tr>
			
			</c:forEach>
		
		</table>
	
		<h3>Listar tarefas</h3>
		
	</body>
</html>