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
<title>Add Supplier</title>
<style>
.container{
 width: 100%;
 position: relative;
 top: 20%;
 
 bottom: 10;
    font-size: 1.2rem;
    font-weight: 400;
    line-height: 1.6;
    color: #212529;
    text-align: left;
}
.card-header{
 font-size: medium;
 font-family: Georgia, serif;
}
.input-number{
  margin-left: 10%;
}
</style>
</head>
<body>

<!-- Breadcrumb -->
<div class="box">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href='<c:url value='/home'/>'>Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Add Supplier</li>
        </ol>
    </nav>
   </div>
   </div>
</div>

<div class="container">
<div class="row justify-content-center">
<div class="col-sm-7">

<div class="card">
<header class="card-header">
	<h2 class="card-title mt-4">Add Supplier</h2>
</header>

<article class="card-body">
   <c:url value="/supplier/addsupplier" var="url"/>
   <form:form modelAttribute="supplier" action="${url }" method="post" enctype="multipart/form-data">
   <form:hidden path="supplierId"></form:hidden>
     <div class="form-group row">
       <form:label path="supplierName" class="col-sm-4">Supplier Name</form:label>
         <div class="col-sm-4">
           <form:input path="supplierName" class="form-control" id="sname"></form:input>
         </div>
     </div>
     
     <div class="form-group row">
       <form:label path="supplierDesc" class="col-sm-4">Supplier Description</form:label>
         <div class="col-sm-5">
           <form:input path="supplierDesc" class="form-control" id="sdesc" type="textarea"></form:input>
         </div>
     </div>
     <div class="text-center">
     <input class="btn btn-success btn-lg" type="submit" value="Add Supplier"></input>
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