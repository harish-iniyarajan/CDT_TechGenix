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
<!-- font awesome icons href -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>${product.productName }</title>
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
.gallery-wrap .img-big-wrap img {
    height: 100%;
    width: 100%;
    display: inline-block;
    cursor: zoom-in;
}
.card-body{
 font-size: medium;
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
          <li class="breadcrumb-item">
            <a href='<c:url value='/all/searchByCategory?searchCondition=${product.category.categoryName }'/>'>${product.category.categoryName }</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">${product.productName }</li>
        </ol>
    </nav>
   </div>
   </div>
</div>

<c:url value="/cart/addtocart/${product.productId }" var="url"/>
<form action="${url }">

<div class="card">
  <div class="row">
	<aside class="col-sm-5 border-right">
       <article class="gallery-wrap"> 
         <div class="img-big-wrap">
            <div><img src='<c:url value='/resources/images/${product.productId }.jpg'/>'></div>
         </div>
        </article>
      </aside>
      
  <aside class="col-sm-7">
   <article class="card-body p-5">
	 <h3 class="title mb-3">${product.productName }</h3>
    <p class="price-detail-wrap"> 
	  <span class="price h3 text-warning"> 
		<span class="currency"><i class="fa fa-inr" aria-hidden="true"></i></span><span class="num">${product.price }</span>
	  </span>  
    </p>
    
    <dl class="item-property">
      <dt>Description</dt>
     <dd><p>${product.productDesc }</p></dd>
    </dl>
    
    <dl class="param param-feature">
      <dt>Supplier</dt>
      <dd>${product.sname }</dd>
    </dl>  
    
    <dl class="param param-feature">
      <dt>Category</dt>
      <dd>${product.category.categoryName }</dd>
    </dl>
    
  <hr>
   <div class="row">
    
    <c:if test="${product.quantity==0 }">
     <button class="btn btn-primary btn-lg" disabled>Out of stock</button>
    </c:if>
    <c:if test="${product.quantity>0 }">
      <dl class="param param-inline">
       <dt>Quantity :</dt>
        <dd>
          <div class="input-group">
          <span class="input-group-btn col-sm-3">
                <button type="button" class="quantity-left-minus btn btn-number"  data-type="minus">
                      <span class="glyphicon glyphicon-minus"></span>
                </button>
           </span>
           <input class="form-control input-number" min="1" max="${product.quantity }" id="quantity" name="requestedQuantity" value="0"></input>
             <span class="input-group-btn col-sm-3">
                 <button type="button" class="quantity-right-plus btn btn-number" data-type="plus">
                       <span class="glyphicon glyphicon-plus"></span>
                 </button>
             </span>
             </div>
           </dd>
      </dl>
     </c:if>
   </div>
   <hr>
    <input class="btn btn-lg btn-outline-primary" type="submit" value="Add to cart">
   <hr>
  </article>
  </aside>
 </div>
 </div>
 </form>


</body>
</html>
<%@include file="Footer.jsp" %>