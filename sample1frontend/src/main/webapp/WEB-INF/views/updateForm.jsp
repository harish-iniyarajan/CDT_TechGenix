<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Update Product</title>
<script>
$(document).ready(function(){
	   $('.quantity-right-plus').click(function(e){
	        e.preventDefault();
	        var quantity = parseInt($('#quantity').val());
	            $('#quantity').val(quantity + 1);
	    });
	     $('.quantity-left-minus').click(function(e){
	        e.preventDefault();
	        var quantity = parseInt($('#quantity').val());
	            if(quantity>0){
	            $('#quantity').val(quantity - 1);
	            }
	    });
	    
	});
</script>
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
          <li class="breadcrumb-item active" aria-current="page">Update Product</li>
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
	<h2 class="card-title mt-4">Update Product</h2>
</header>
<br><br>
<article class="card-body">
   <c:url value="/admin/updateproduct" var="url"/>
   <form:form modelAttribute="product" action="${url }" method="post" enctype="multipart/form-data">
   <form:hidden path="productId"></form:hidden>
     <div class="form-group row">
       <form:label path="productName" class="col-sm-4">Product Name</form:label>
         <div class="col-sm-4">
           <form:input path="productName" class="form-control" id="pname"></form:input>
         </div>
     </div>
     
     <div class="form-group row">
       <form:label path="productDesc" class="col-sm-4">Product Description</form:label>
         <div class="col-sm-5">
           <form:input path="productDesc" class="form-control" id="pdesc" type="textarea"></form:input>
         </div>
     </div>
     
     <div class="form-group row">
       <form:label path="quantity" class="col-sm-4">Quantity</form:label>
      
         <div class="input-group col-sm-3">
           <span class="input-group-btn col-sm-2">
                <button type="button" class="quantity-left-minus btn btn-number"  data-type="minus">
                      <span class="glyphicon glyphicon-minus"></span>
                </button>
           </span>
           <form:input path="quantity" class="form-control input-number" min="1" id="quantity"></form:input>
             <span class="input-group-btn col-sm-2">
                 <button type="button" class="quantity-right-plus btn btn-number" data-type="plus" data-field="">
                       <span class="glyphicon glyphicon-plus"></span>
                 </button>
             </span>
         </div> 
         </div>
         
         <div class="form-group row">
         <form:label path="price" class="col-sm-4">Price</form:label>
         <div class="col-sm-3">
             <form:input path="price" class="form-control input-number" id="price"></form:input>
         </div>
     </div>
     
     <div class="form-group row">
      <form:label path="category.categoryId" class="col-sm-4">Category</form:label>
      <div class="col-sm-4">
       <form:select path="category.categoryId" class="custome-select mr-sm-2">
         <c:forEach items="${categories }" var="c">
           <form:option value="${c.categoryId }">${c.categoryName }</form:option>
         </c:forEach>
       </form:select>
      </div>
     </div>
     
     <div class="form-group row">
      <form:label path="sname" class="col-sm-4">Supplier</form:label>
      <div class="col-sm-4">
       <form:select path="sname" class="custome-select mr-sm-2">
         <c:forEach items="${supplier }" var="s">
           <form:option value="${s.supplierId }">${s.supplierName }</form:option>
         </c:forEach>
       </form:select>
      </div>
     </div>
     
     <div class="form-group row">
      <form:label path="image" class="col-sm-4">Image</form:label>
        <div class="col-sm-3">
         <form:input path="image" type="file" class="file-input"></form:input>
        </div>
     </div>
     <input class="btn btn-warning" type="submit" value="Update Product"></input>
   </form:form>
   </article>
   </div>
   
   </div>
</div>
</div>

</body>
</html>
<%@include file="Footer.jsp" %>