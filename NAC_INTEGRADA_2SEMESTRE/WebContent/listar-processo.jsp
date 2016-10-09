<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Processos</title>
<%@ include file="includes.jsp"%>
</head>
<body>

	<div class="container">
	
	<%@ include file="menu.jsp" %>

		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h1>Listar processos</h1>
				</div>
			</div>
		</div>
		<!-- Formulário para pesquisa -->
		<div class="row">
			<div class="col-md-6">
				<form action="listar" method="get">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="idNumero">Número do Processo:</label> <input
									type="text" id="idNumero" name="numero" class="form-control">
							</div>
							<div class="form-group">
								<label for="idCliente">Nome do Cliente:</label> <input
									type="text" id="idCliente" name="cliente" class="form-control">
							</div>

							<div class="form-group">
								<input type="submit" value="Buscar" class="btn btn-primary">
								<input type="reset" value="Limpar" class="btn btn-danger">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label id="idPeriodo">Período:</label> 
								<input type="date" id="idPeriodo" name="inicial" class="form-control">
							</div>
							<div class="form-group">
								<label id="idAte">Até:</label> 
								<input type="date" id="idAte" name="final" class="form-control">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		
		<!-- Tabela Lista de Processos -->
		<div class="row">
			<div class="col-md-12">
				
				<table class="table table-hover" id="listaProcessos">
					<thead>
						<tr>
							<th style="text-align: left;">Número</th>
							<th style="text-align: center;">Descrição</th>
							<th style="text-align: center;">Cliente</th>
							<th style="text-align: center;">Ação</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>001</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td style="text-align: center;">
								<button type="button" id="lancarDespesa" class="btn btn-primary">Lançar Despesa</button>
								<button type="button" id="consultarDespesa" class="btn btn-primary">Consultar Despesa</button>
							</td>
						</tr>
						
						<tr>
							<td>002</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td style="text-align: center;">
								<button type="button" id="lancarDespesa" class="btn btn-primary">Lançar Despesa</button>
								<button type="button" id="consultarDespesa" class="btn btn-primary">Consultar Despesa</button>
							</td>
						</tr>
						
						<tr>
							<td>003</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td style="text-align: center;">
								<button type="button" id="lancarDespesa" class="btn btn-primary">Lançar Despesa</button>
								<button type="button" id="consultarDespesa" class="btn btn-primary">Consultar Despesa</button>
							</td>
						</tr>
						
						<tr>
							<td>004</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td>Lorem ipsum dolor sit amet, consectetur</td>
							<td style="text-align: center;">
								<button type="button" id="lancarDespesa" class="btn btn-primary">Lançar Despesa</button>
								<button type="button" id="consultarDespesa" class="btn btn-primary">Consultar Despesa</button>
							</td>
						</tr>
					</tbody>
				</table>
			
			</div>
		
		</div>
	</div>
	
	<%-- <%@ include file="rodape.jsp" %> --%>

</body>
</html>