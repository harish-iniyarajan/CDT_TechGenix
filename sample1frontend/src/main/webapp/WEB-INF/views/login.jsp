<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<!--  link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css" -->
<!--  link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" -->
<link rel="stylesheet" href='<c:url value='/resources/css/login.css'/>' type="text/css">
<title>Login</title>
</head>
<body>
<!-- Breadcrumb -->
<div class="container">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href='<c:url value='/home'/>'>Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Login</li>
        </ol>
    </nav>
   </div>
   </div>
</div>

  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header">Log In</div>
          <div class="card-body">
          <div class="form-group row"><span style="color:red">${error }</span></div>
          <div class="form-group row">${msg }</div>
          <c:url value="/j_spring_security_check" var="url"></c:url>
          <form method="post" action="${url }">
            <div class="form-group row">
               <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                 <div class="col-md-6">
                  <input type="text" class="form-control" name="j_username" required autofocus>
                 </div>
                 
            </div>
            
            <div class="form-group row">
                <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
                  <div class="col-md-6">
                    <input type="password" class="form-control" name="j_password" required>
                  </div>
            </div>
            
            <div class="col-md-6 offset-md-5">
            <input type="submit" value="Login" class="btn btn-primary btn-md">
            </div>
          </form>
          </div>
          </div>
          </div>
          </div>
         
          
</body>
</html>
<%@include file="Footer.jsp" %>