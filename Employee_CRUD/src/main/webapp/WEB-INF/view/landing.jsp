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
  <div class="container-fluid ">
    <a class="navbar-brand" href="#">Employee Management</a>
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
        <li class="float-right">
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
    <div class="col-md-6">
            <!-- Employee Records Description -->
            <h2>Simple Employee Management System</h2>
            <p>
            A simple employee record system encompasses the fundamental operations of Create, Read, Update, and Delete (CRUD) and includes user registration and login functionality. In such a system, users can register an account by providing their essential details like name, email, and password. After registration, they can log in to access and manage employee records.
            </p>
            <p>Once logged in, users have the ability to create new employee records by entering the necessary information, such as the employee's name, contact details, position, and other relevant data. These records are then stored securely in a database.</p>
             <p>Users can also view existing employee records by searching or browsing through the database. This Read functionality allows them to access and retrieve information about specific employees, helping with quick reference and decision-making.</p>
              <p>For updating employee records, users can edit the information of existing employees. They can modify details like addresses, contact numbers, or job positions, ensuring that the database remains up to date.</p>
               <p>Additionally, the system allows users to delete records, which is crucial for removing outdated or unnecessary data and maintaining a clean and organized employee database.</p>
                <p>This simple employee record system enhances productivity and organization by providing a platform for the efficient management of employee data, making it easier for businesses to keep track of their workforce and make informed decisions based on up-to-date information. User registration and login functionality ensures that only authorized individuals can access and manage the employee records, safeguarding the confidentiality and integrity of the data.</p>
        </div>
        <div class="col-md-6">
            <img src='<c:url value="/resources/image/office.jpg"></c:url>' class="img-fluid" alt="Office Image">
        </div>
    </div>
</div>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>