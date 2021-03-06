<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lan�ar Honor�rio</title>
<%@ include file="includes.jsp"%>
</head>
<body>

	<div class="container">

		<%@ include file="menu.jsp"%>

		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h1>Lan�ar Honor�rio</h1>
				</div>
			</div>
		</div>
		<!--  Formul�rio -->
		<div class="row">
			<div class="col-md-12">
				<form action="lancarHonorario" action="post">
					<div class="col-md-4">
						<div class="form-group">
							<label id="idCodProcesso">Cod. Processo:</label>
							<input type="text" id="idCodProcesso" class="form-control" name="codProcesso" value="01" disabled>
						</div>
						<div class="form-group">
							<label id="idAdvogado">Advogado:</label> <select id="idAdvogado"
								class="form-control">
								<option value=" ">Selecione</option>
								<option value="Harry Houdini">Harry Houdini</option>
							</select>
						</div>
						<div class="form-group">
							<label id="idTarefa">Tarefa:</label> <select id="idTarefa"
								class="form-control">
								<option value=" ">Selecione</option>
								<option value="pesquisa">Pesquisa</option>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label id="idData">Data Honor�rio:</label> <input type="date"
								id="idData" name="data" class="form-control">
						</div>
						<div class="form-group">
							<label id="idHoras">Qtde. Horas:</label> <input type="text"
								id="idHoras" name="horas" class="form-control">
						</div>						
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label id="idObservacao">Observa��es:</label>
							<textarea rows="5" cols="40" id="odObservacao" name="observacao"
								class="form-control"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Lan�ar" class="btn btn-primary">
							<input type="reset" value="Limpar" class="btn btn-danger">
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Lista -->

		<div class="row">

			<div class="col-md-12">

				<table class="table table-hover" id="lista">

					<thead>
						<tr>
							<th style="text-align: left;">Cod.Processo</th>
							<th style="text-align: center;">Advogado</th>
							<th style="text-align: center;">Tarefa</th>
							<th style="text-align: center;">Data Honor�rio</th>
							<th style="text-align: center;">Qtde. Horas</th>
							<th style="text-align: center;">Valor</th>
							<th style="text-align: center;">Observa��es</th>
							<th style="text-align: center;">A��es</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td style="text-align: center;">01</td>
							<td style="text-align: center;">Robson Gomes</td>
							<td style="text-align: center;">Pesquisa</td>
							<td style="text-align: center;">03/05/2016</td>
							<td style="text-align: center;">2</td>
							<td style="text-align: center;">R$ 185,00</td>
							<td style="text-align: center;"></td>
							<td style="text-align: center;">
								<button type="button" id="editar" class="btn btn-primary">Editar</button>
								<button type="button" id="excluir" class="btn btn-primary">Excluir</button>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">01</td>
							<td style="text-align: center;">Danilo Bispo</td>
							<td style="text-align: center;">Audi�ncia</td>
							<td style="text-align: center;">04/05/2016</td>
							<td style="text-align: center;">3</td>
							<td style="text-align: center;">R$ 205,00</td>
							<td style="text-align: center;"></td>
							<td style="text-align: center;">
								<button type="button" id="editar" class="btn btn-primary">Editar</button>
								<button type="button" id="excluir" class="btn btn-primary">Excluir</button>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">01</td>
							<td style="text-align: center;">Selecione</td>
							<td style="text-align: center;">Selecione</td>
							<td style="text-align: center;">13/09/2016</td>
							<td style="text-align: center;"></td>
							<td style="text-align: center;">R$ 0</td>
							<td style="text-align: center;"></td>
							<td style="text-align: center;">
								<button type="button" id="editar" class="btn btn-primary">Editar</button>
								<button type="button" id="excluir" class="btn btn-primary">Excluir</button>
							</td>
						</tr>
					</tbody>

				</table>

			</div>

		</div>

	</div>

	<%-- <%@ include file="rodape.jsp"%> --%>

</body>
</html>