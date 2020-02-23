<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Shipping Address</title>
</head>
<body>

<!-- Breadcrumb -->
<div class="box">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href='<c:url value='/home'/>'>Home</a></li>
          <li class="breadcrumb-item">
            <a href='<c:url value='/cart/getcart'/>'>Cart</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Shipping Address</li>
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
 	<h4 class="card-title mt-2">Shipping Address</h4>
  </header>
  <article class="card-body">
   <c:url value='/cart/createorder' var="url"/>
    <form:form action="${url }" id="form" modelAttribute="shippingAddress" method="post">
      <div class="form-row">
     <div class="col form-group">
        <form:label path="apartmentNumber">Apartment Number</form:label>
        <form:input path="apartmentNumber" id="apno" class="form-control"></form:input>
     </div>
     <div class="col form-group">
        <form:label path="streetName">Street Name</form:label>
        <form:input path="streetName" id="stno" class="form-control"></form:input>
     </div>
  </div>
  <div class="form-row">
     <div class="col form-group">
          <form:label path="city">City</form:label>
          <form:input path="city" id="city" class="form-control"></form:input>
     </div>
     <div class="col form-group">
          <form:label path="state">State</form:label>
          <form:input path="state" id="state" class="form-control"></form:input>
     </div>
  </div>
  <div class="form-row">
     <div class="col form-group">
         <form:label path="country">Country</form:label>
         <form:input path="country" id="country" class="form-control"></form:input>
     </div>
     <div class="col form-group">
         <form:label path="zipCode">Zip Code</form:label>
         <form:input path="zipCode" id="zipcode" class="form-control"></form:input>
     </div>
   </div>
   <div class="form-group">
       <input type="submit" value="Proceed" class="btn btn-primary btn-block">
   </div>
   </form:form>
  </article>
 </div>
 </div>
 </div>
 </div>

</body>
</html>
<%@include file="Footer.jsp" %>