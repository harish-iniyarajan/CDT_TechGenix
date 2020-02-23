<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Summary</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<div class="pb-5">
 <div class="container">
   <div class="row">
    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
    
    <div class="row">
     <div class="col-sm-6"><h2><strong class="text-muted">Order Number</strong></h2></div>
     <div class="col-sm-6" align="right"><h2><strong class="text-muted">Order Date</strong></h2></div>
    </div>
    <div class="row">
     <div class="col-sm-6"><strong>${customerOrder.orderId }</strong></div>
     <div class="col-sm-6" align="right"><strong>${customerOrder.purchaseDate }</strong></div>
    </div>
    <br><br>
    
    <div class="row">
     <div class="col-sm-6"><h2><strong class="text-muted">Shipping Address</strong></h2></div>
     <div class="col-sm-6" align="right"><h2><strong class="text-muted">Billing Address</strong></h2></div>
    </div>
    <div class="row">
     <div class="col-sm-6"><strong>${customerOrder.user.shippingaddress.apartmentNumber }, ${customerOrder.user.shippingaddress.streetName }</strong></div>
     <div class="col-sm-6" align="right"><strong>${customerOrder.user.billingaddress.apartmentNumber }, ${customerOrder.user.billingaddress.streetName }</strong></div>
    </div>
    <div class="row">
      <div class="col-sm-6"><strong>${customerOrder.user.shippingaddress.city }, ${customerOrder.user.shippingaddress.state }</strong></div>
      <div class="col-sm-6" align="right"><strong>${customerOrder.user.billingaddress.city }, ${customerOrder.user.billingaddress.state }</strong></div>
    </div>
    <div class="row">
     <div class="col-sm-6"><strong>${customerOrder.user.shippingaddress.country } - ${customerOrder.user.shippingaddress.zipCode }</strong></div>
     <div class="col-sm-6" align="right"><strong>${customerOrder.user.billingaddress.country } - ${customerOrder.user.billingaddress.zipcode }</strong></div>
    </div>
    
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
        </tr>
      </thead>
      
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
       </tr>
      </c:forEach>
     </tbody>
    </table>
    <table class="table">
     <tbody>
      <tr>
        <td class="align-middle"><strong class="text-muted">Total</strong></td>
        <td><h5 class="font-weight-bold"><i class="fa fa-inr" aria-hidden="true"></i>${customerOrder.grandTotal }</h5></td>
       </tr>
     </tbody>
    </table>
    <a href='<c:url value='/cart/paymentportal'/>' class="btn btn-warning btn-lg pull-right">Proceed to pay</a>
   </div>
  </div>
  </div>
 </div>
</div>

</body>
</html>
<%@include file="Footer.jsp" %>