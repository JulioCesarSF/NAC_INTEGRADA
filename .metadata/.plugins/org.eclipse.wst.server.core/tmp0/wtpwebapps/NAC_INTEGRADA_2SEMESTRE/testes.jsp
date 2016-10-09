<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>P�gina de Teste</title>
<%@ include file="includes.jsp"%>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="page-header">
					<h1>Testes</h1>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="list-group">
					<c:url value="testes" var="testeConexao">
						<c:param name="acao" value="testeConexao" />
					</c:url>

					<button type="button" class="btn ${retornoTesteConexao }"
						data-toggle="collapse" data-target="#login">Testar
						Conex�o ${excecao }</button>
				</div>
			</div>
			<div class="col-md-6">
				<div class="alert alert-info">Verde = Passou, Vermelho = N�o
					Passou no teste</div>
			</div>
		</div>

		<!-- Formul�rio para testar a conex�o -->
		<div class="row">
			<div class="col-md-4">
				<div id="login" class="collapse">

					<form method="post" action="testes">
						<input type="hidden" name="acao" value="testeConexao">
						<div class="form-group">
							<input type="text" name="usuario" placeholder="N�mero do RM"
								class="form-control">
						</div>
						<div class="form-group">
							<input type="password" name="senha" placeholder="Senha do portal"
								class="form-control">
						</div>
						<div class="form-group">
							<input type="submit" value="Testar" class="btn btn-info">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- FIM do formul�rio para testar conex�o -->
	</div>


</body>
</html>