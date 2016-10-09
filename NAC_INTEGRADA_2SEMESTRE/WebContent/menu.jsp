<nav class="navbar navbar-inverse">
	<div class="container-fluid">

		<div class="navbar-header">
			<!-- Agrupar menu para telas menores -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="index.jsp">Home</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">

			<ul class="nav navbar-nav">
				<!-- Menu Processo -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Processo<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="cadastrar-processo.jsp">Cadastrar Processo</a></li>
						<li><a href="lancar-despesa.jsp">Lançar Despesa</a></li>
						<li><a href="listar-processo.jsp">Listar Processos</a></li>
					</ul></li>

				<!-- Menu Honorários -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Honorários<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="lancar-honorario.jsp">Lançar Honorário</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>