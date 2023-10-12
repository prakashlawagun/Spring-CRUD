<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="home">Employee Management</a>
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
		<c:if test="${not empty loginuser}">
		<div class="container mt-5">
			<h2 class="text-center mb-5">Welcome to employee Recording System</h2>
			<div class="row">
				<div class="col-md-12">
					<div class="card"]>
						<div class="card-header text-center">
						<h4>All Employee Details</h4>
						</div>
							<c:if test="${not empty msg }">
							<h5 class="text-success text-center mt-3" >${msg }</h5>
							<c:remove var="msg" />
						</c:if>
						<div class="card-body">
						<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Full Name</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
       <th scope="col">Password</th>
        <th scope="col">Designation</th>
         <th scope="col">Salary</th>
          <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${empList}" var="emp">
    <tr>
      <th scope="row">${emp.id}</th>
      <td>${emp.fullName}</td>
      <td>${emp.address}</td>
      <td>${emp.email}</td>
        <td>${emp.password}</td>
      <td>${emp.designation}</td>
      <td>${emp.salary}</td>
        <td><a href="editEmp/${emp.id}" class="btn btn-primary">Edit</a></td>
          <td><a href="deleteEmp/${emp.id}" class="btn btn-danger">Delete</a></td>
    </tr>
      </c:forEach>
  </tbody>
</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:if>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>