<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LISTA DE USUÁRIOS</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<!-- Begin Header -->
    <nav class="navbar navbar-dark bg-success" aria-label="First navbar example">
        <div class="container-fluid">
        	<div class="col-4 col-md-4 col-xl-4">
        	<a class="navbar-brand" href="./index.jsp">Raia Drogasil</a>
            <a class="navbar-brand" href="./formulario.jsp">Usuário</a>
        	</div>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01"
                aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample01">
                <ul class="navbar-nav me-auto mb-2">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown"
                            aria-expanded="false">Dropdown</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
                <form>
                    <input class="form-control" type="text" placeholder="Search" aria-label="Search">
                </form>
            </div>
        </div>
    </nav>
    <!-- End Header -->


    <!-- Begin Table -->
    <div class="col-10 col-md-10 col-lg-10 container mt-3">
        <h3 class="card-title text-center">Lista de usuários</h3>
        <hr>
        

            <div class="d-grid gap-2 d-md-block p-2">
                <form action="Servlet" method="post">
                    <button class="btn btn-primary mb-3" type="submit" name="option" value="insertForm">Adicionar Usuário</button>
                </form>
            </div>


			<table class="table table-bordered" >
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Email</th>
					<th>País</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${listUser}">
					<tr>
						<form action="Servlet" method="post">
							<td>
								<c:out value="${user.id}"/>
								<input type="hidden" name="id" value="${user.id}"/>
							</td>
							<td><c:out value="${user.nome}"/></td>
							<td><c:out value="${user.email}"/></td>
							<td><c:out value="${user.pais}"/></td>
							<td>
								<button class="btn btn-primary" type="submit" name="option" value="delete">Deletar</button>
								<button class="btn btn-primary" type="submit" name="option" value="updateForm">Atualizar</button>
							</td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			
</body>
</html>