<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<%@ include file="includes.jsp"%>
</head>
<body>

	<div class="container">
	
	<%@ include file="menu.jsp" %>
	
		<!-- Título -->
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h1>Advocacia LCA</h1>
				</div>
			</div>
		</div>
		<!-- Primeira linha de thumbs -->
		<div class="row">
		
			<!-- Cadastrar Processos thumb -->
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="imagens/cadastrar_processo.png" alt="cadastro_processo"
						width="200" height="200">
					<div class="caption">
						<h3>Cadastrar Processo</h3>
						<p style="text-align: justify;">Página para cadastrar processo no banco de dados.</p>
					</div>
				</div>
			</div>
			
			<!-- Lançar Despesas por Processo -->
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="imagens/lancar_despesa.png" alt="lancar_despesa"
						width="200" height="200">
					<div class="caption">
						<h3>Lançar Despesa por Processo</h3>
						<p style="text-align: justify;">Página para o lançamento de despesa em processo.</p>
					</div>
				</div>
			</div>

			<!-- Listar Processos thumb -->
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="imagens/listar_processo.png" alt="listar_processo" width="200" height="200">
					<div class="caption">
						<h3>Listar</h3>
						<p style="text-align: justify;">Página para listar os processos cadastrados no banco de
							dados.</p>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Segunda linha de thumbs -->
		<div class="row">
		
			<!-- Lançar Honorários (Tarefas) -->
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="imagens/lancar_tarefa.png" alt="lancar_tarefa"
						width="200" height="200">
					<div class="caption">
						<h3>Lançar Honorários (Tarefas)</h3>
						<p style="text-align: justify;">Página para o lançamento de honorários, tarefas, realizadas.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%-- <%@ include file="rodape.jsp" %> --%>
</body>
</html>