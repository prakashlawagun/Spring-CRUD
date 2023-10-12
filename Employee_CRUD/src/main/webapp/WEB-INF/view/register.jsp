<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="landing">Employee Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <c:if test="${not empty loginuser}">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="addEmployee">Add Employee</a>
        </li>
            <li>
        	<a href="myProfile" class="btn btn-danger">Profile</a>
        </li>
      <li class="px-3">
        	<a href="logout" class="btn btn-warning">Logout</a>
        </li>
        </c:if>
        <c:if test="${empty loginuser}">
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="login">Login</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="register">Register</a>
        </li>
        </c:if>
        </ul>
    </div>
  </div>
</nav>
		<div class="container mt-5">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card">
						<div class="card-body">
							<h3>Register</h3>
							<c:if test = "${not empty msg}">
        						<p><c:out value = "${msg}"/><p>
        						<c:remove var="msg"/>
     						 </c:if>
						</div>
						<div class="card-body">
							<form action="createUser" method="post">
								<div class="mb-3">
									<label>Enter Full Name</label>
									<input type="text" name="fullName" class="form-control" placeholder="Full Name"/>
								</div>
								<div class="mb-3">
									<label>Address</label>
									<input type="text" name="address" class="form-control" placeholder="Address"/>
								</div>
								<div class="mb-3">
									<label>Email</label>
									<input type="email" name="email" class="form-control" placeholder="Email"/>
								</div>
								<div class="mb-3">
									<label>Password</label>
									<input type="password" name="password" class="form-control" placeholder="Password"/>
								</div>
								<button type="submit" class="btn btn-primary col-md-12">Register</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>