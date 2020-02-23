<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<!-- Breadcrumb -->
<div class="box">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href='<c:url value='/home'/>'>Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Cart</li>
        </ol>
    </nav>
   </div>
   </div>
</div>

<div class="pb-5">
 <div class="container">
   <div class="row">
    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

     <div class="table-responsive">
      <table class="table">
       <thead>
        <tr>
         <th scope="col" class="border-0 bg-light">
          <div class="p-2 px-3 text-uppercase">Product</div>
         </th>
         <th scope="col" class="border-0 bg-light">
           <div class="py-2 text-uppercase">Price</div>
         </th>
         <th scope="col" class="border-0 bg-light">
           <div class="py-2 text-uppercase">Quantity</div>
         </th>
         <th scope="col" class="border-0 bg-light">
            <div class="py-2 text-uppercase">Remove</div>
         </th>
        </tr>
      </thead>
      
      <c:set var="grandTotal" value="0"/>
      <tbody>
       <c:forEach items="${cartItems }" var="cartItem">
        <tr>
         <th scope="row" class="border-0">
           <div class="p-2">
             <img src='<c:url value='/resources/images/${cartItem.product.productId }.jpg'/>' alt="${cartItem.product.productName }" width="70" class="img-fluid rounded shadow-sm">
            <div class="ml-3 d-inline-block align-middle">
              <h5 class="mb-0">
                <a href='<c:url value='/all/getproduct/${cartItem.product.productId }'/>' class="text-dark d-inline-block align-middle">${cartItem.product.productName }</a>
              </h5>
               <span class="text-muted font-weight-normal font-italic d-block">Category: ${cartItem.product.category.categoryName }</span>
            </div>
           </div>
         </th>
       <td class="border-0 align-middle"><strong><i class="fa fa-inr" aria-hidden="true"></i>${cartItem.totalprice }</strong></td>
       <td class="border-0 align-middle"><strong>${cartItem.quantity }</strong></td>
       <td class="border-0 align-middle"><a href='<c:url value='/cart/removecartitem/${cartItem.cartItemId }'/>' class="text-dark"><i class="fa fa-trash"></i></a></td>
       </tr>
       <c:set var="grandTotal" value="${grandTotal + cartItem.totalprice }"/>
      </c:forEach>
     </tbody>
    </table>
    <table class="table">
     <tbody>
      <tr>
       <td class="align-middle"><strong class="text-muted">Order Subtotal</strong></td>
       <td><strong><i class="fa fa-inr" aria-hidden="true"></i>${grandTotal }</strong>   
      </tr>
      <tr>
       <td class="align-middle"><strong class="text-muted">Shipping and Handling</strong></td>
       <td><strong><i class="fa fa-inr" aria-hidden="true"></i>${(grandTotal*0.02) }</strong></td>
      </tr>
      <tr>
        <td class="align-middle"><strong class="text-muted">Tax</strong></td>
        <td><strong><i class="fa fa-inr" aria-hidden="true"></i>${(grandTotal*0.12) }</strong></td>
      </tr>
      <tr>
        <td class="align-middle"><strong class="text-muted">Total</strong></td>
        <td><h5 class="font-weight-bold"><i class="fa fa-inr" aria-hidden="true"></i>${Math.round(grandTotal*1.14) }</h5></td>
      </tr>
     </tbody>
    </table>
    <a href='<c:url value='/all/searchByCategory?searchCondition=All'/>' class="btn btn-outline-primary btn-lg pull-left">Continue Shopping</a>
    <c:if test="${empty(cartItems)}">
     <button type="button" class="btn btn-primary btn-lg pull-right" disabled>Place Order</button>
    </c:if>
    <c:if test="${!empty(cartItems)}">
    <a href="<c:url value='/cart/shippingaddressform'></c:url>" class="btn btn-primary btn-lg pull-right">Place Order</a>
    </c:if>
   </div>
  </div>
 </div>
</div>
</div>
   
</body>
</html>
<%@include file="Footer.jsp" %>