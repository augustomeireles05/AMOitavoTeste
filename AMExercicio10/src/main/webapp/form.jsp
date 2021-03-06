<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formul?rio</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<!-- Begin Header -->
	<nav class="navbar navbar-dark bg-success mb-5"
		aria-label="First navbar example">
		<div class="container-fluid">
			<div class="col-4 col-md-4 col-xl-4">
				<a class="navbar-brand" href="index.jsp">Raia Drogasil</a> <a
					class="navbar-brand" href="/formulario.jsp">Usu?rio</a>
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsExample01"
				aria-controls="navbarsExample01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExample01">
				<ul class="navbar-nav me-auto mb-2">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link disabled">Disabled</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown01"
						data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown01">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
				</ul>
				<form>
					<input class="form-control" type="text" placeholder="Search"
						aria-label="Search">
				</form>
			</div>
		</div>
	</nav>
	<!-- End Header -->




	<!-- Begin Form -->
	
		<!-- Begin Form -->
	<div class="container col-12 col-md-4 col-lg-4 col-xl-4 shadow p-3">
		<h3 class="card-title">Adicionar usu?rio</h3>

		<form action="Servlet" method="post">

			<c:choose>

				<c:when test="${ user == null }">


					<div class="mb-3">
						<label class="form-label">Nome</label>
						 <input type="text" class="form-control" name="nome" value="${user.nome}"/>
					</div>

					<div class="mb-3">
						<label class="form-label">Email</label>
						<input type="text" class="form-control" name="email" value="${user.email}"/>
					</div>

					<div class="mb-3">
						<label class="form-label">Pa?s</label>
						<input type="text" class="form-control" name="pais" value="${user.pais}"/>
					</div>
					
				</c:when>
			</c:choose>

			<c:choose>
				<c:when teste="${user == null}">
					<div class="mb-3">
						<button class="btn btn-primary flex-start" type="submit" name="option" value="insert">Salvar</button>
					</div>

				<c:otherwise>
					<div class="mb-3">
						<button class="btn btn-primary flex-end" type="submit" name="option" value="updateForm">Atualizar</button>
					</div>
				</c:otherwise>

				</c:when>
			</c:choose>

		</form>
	</div>
	
	<!-- End Form  -->
</body>
</html>