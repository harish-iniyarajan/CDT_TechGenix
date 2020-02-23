<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>

<body>
<!--  Breadcrumb -->
<div class="container">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href='<c:url value='/home'/>'>Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Sign Up</li>
        </ol>
    </nav>
   </div>
   </div>
</div>

<div class="container">
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<header class="card-header">
	<a href='<c:url value='/login'/>' class="float-right btn btn-outline-primary mt-1">Log in</a>
	<h4 class="card-title mt-2">Sign up</h4>
</header>
<article class="card-body">
<c:url value='/all/customerRegister' var="url"/>
<form:form action="${url }" id="form" modelAttribute="user" method="post">

  <div class="form-row">
     <div class="col form-group">
          <form:label path="FirstName">First Name</form:label>
          <form:input path="FirstName" id="firstname" class="form-control"></form:input>
     </div>
     <div class="col form-group">
          <form:label path="LastName">Last Name</form:label>
          <form:input path="LastName" id="lastname" class="form-control"></form:input>
     </div>
  </div>
  
  <div class="form-group">
        <form:label path="PhoneNumber">Phone Number</form:label>
        <form:input path="PhoneNumber" id="phno" class="form-control"></form:input>
  </div>
  <div class="form-group">
        <form:label path="email">Email Address</form:label>
        <form:input path="email" id="email" type="email" class="form-control"></form:input>
  </div>
  <div class="form-group">
        <form:label path="Password">Enter Password</form:label>
        <form:input path="Password" id="password" type="password" class="form-control"></form:input>
  </div>

  <div class="form-row">
     <div class="col form-group">
        <form:label path="billingaddress.apartmentNumber">Apartment Number</form:label>
        <form:input path="billingaddress.apartmentNumber" id="apno" class="form-control"></form:input>
     </div>
     <div class="col form-group">
        <form:label path="billingaddress.streetName">Street Name</form:label>
        <form:input path="billingaddress.streetName" id="stno" class="form-control"></form:input>
     </div>
  </div>
  <div class="form-row">
     <div class="col form-group">
          <form:label path="billingaddress.city">City</form:label>
          <form:input path="billingaddress.city" id="city" class="form-control"></form:input>
     </div>
     <div class="col form-group">
          <form:label path="billingaddress.state">State</form:label>
          <form:input path="billingaddress.state" id="state" class="form-control"></form:input>
     </div>
  </div>
  <div class="form-row">
     <div class="col form-group">
         <form:label path="billingaddress.country">Country</form:label>
         <form:input path="billingaddress.country" id="country" class="form-control"></form:input>
     </div>
     <div class="col form-group">
         <form:label path="billingaddress.zipcode">Zip Code</form:label>
         <form:input path="billingaddress.zipcode" id="zipcode" class="form-control"></form:input>
     </div>
   </div>
   <div class="form-group">
       <input type="submit" value="Register" class="btn btn-primary btn-block">
   </div>
   <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small> 
</form:form>
</article>
 <div class="border-top card-body text-center">Have an account? <a href='<c:url value='/login'/>'>Log In</a></div>
</div>
</div>
</div>
</div>
</body>
</html>
<%@include file="Footer.jsp" %>