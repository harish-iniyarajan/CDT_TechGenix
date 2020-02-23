<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href='<c:url value='/resources/css/productList.css'/>' rel="stylesheet" type="text/css">
</head>
<body>
<div class="container">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href='<c:url value='/home'/>'>Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">${search }</li>
        </ol>
    </nav>
   </div>
   </div>
</div>

<div class="container">
    <div class="row" >
        <div class="col-12 col-sm-3">
            <div class="card bg-light mb-6">
                <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                <ul class="list-group category_block">
                 <c:forEach items="${categories }"  var="category">
                  <li class="list-group-item">
                   <a href='<c:url value='/all/searchByCategory?searchCondition=${category.categoryName }'/>'>${category.categoryName }</a>
                   <security:authorize access="hasRole('ROLE_ADMIN')">
                   <a href='<c:url value='/deleteCategory/${category.categoryId }'/>' style="float: right"><i class="fa fa-trash" aria-hidden="true"></i></a>
                   <a href='<c:url value='/editCategory/${category.categoryId }'/>' style="float: right; margin-right: 5px;"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                   </security:authorize>
                  </li>
                 </c:forEach>
               </ul>
              </div>
            </div>
      <div class="col">
       <div class="row">
         <c:forEach items="${productList }" var="p">
           <div class="col-12 col-md-6 col-lg-4" style="margin-bottom: 10px;">
            <div class="card productL">
              <img class="card-img-top" src='<c:url value='/resources/images/${p.productId }.jpg'/>' alt="${p.productName }">
                <div class="card-body">
                   <h4 class="card-title"><a href='<c:url value='/all/getproduct/${p.productId }'/>' title="View Product">${p.productName }</a></h4>
                    <p class="card-text">${p.productDesc }</p>
                    <div class="row">
                    <div class="col">
                       <p class="btn btn-danger btn-lg btn-block"><i class="fa fa-inr" aria-hidden="true"></i>${p.price }</p>
                    </div>
                    <div class="col">
                      <a href='<c:url value='/all/getproduct/${p.productId }'/>' class="btn btn-lg btn-success btn-block">View Product</a>
                    </div>
                    </div>
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                    <div class="row">
                     <div class="col">
                      <a href='<c:url value='/admin/getupdateform/${p.productId }'/>' style="font-size: medium;"><i class="fa fa-pencil-square-o" aria-hidden="true">Edit</i></a>
                     </div>
                     <div class="col">
                      <a href='<c:url value='/admin/deleteproduct/${p.productId }'/>' style="font-size: medium;"><i class="fa fa-trash" aria-hidden="true">Delete</i></a>
                     </div>
                     </div>
                    </security:authorize>                  
                </div>
              </div>
            </div>
         </c:forEach>
       </div>
      </div>
     </div>
     </div>
     
</body>
</html>
<%@include file="Footer.jsp" %>