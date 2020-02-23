<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Portal</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style>
.panel{
  margin-left: 40%;
}
</style>
</head>
<body>
<div class="container">
  <div class="row">
   <div class="col-sm-8" >
     <div class="panel panel-default">
       <div class="panel-heading">
         <div class="row">
           <h3 class="text-center">Payment Details</h3>
             <img class="img-responsive cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png" width="100%">
         </div>
       </div>
      <div class="panel-body">
        <form role="form">
          <div class="row">
           <div class="col-xs-12">
            <div class="form-group">
              <label>CARD NUMBER</label>
               <div class="input-group">
                <input type="tel" class="form-control" placeholder="Valid Card Number" />
                  <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                </div>
             </div>
            </div>
           </div>
           <div class="row">
            <div class="col-xs-7 col-md-7">
             <div class="form-group">
              <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                <input type="tel" class="form-control" placeholder="MM / YY" />
              </div>
             </div>
          <div class="col-xs-5 col-md-5 pull-right">
           <div class="form-group">
             <label>CVV</label>
               <input type="tel" class="form-control" placeholder="CVV" />
           </div>
           </div>
        </div>
        <div class="row">
         <div class="col-xs-12">
          <div class="form-group">
           <label>CARD OWNER</label>
            <input type="text" class="form-control" placeholder="Card Owner Name" />
           </div>
          </div>
         </div>
        </form>
       </div>
      <div class="panel-footer">
         <div class="row">
            <div class="col-xs-12">
              <a href='<c:url value='/home'/>' class="btn btn-warning btn-lg btn-block">Proceed Payment</a>
         </div>
        </div>
     </div>
    </div>
    </div>
   </div>
</div>

</body>
</html>
<%@include file="Footer.jsp" %>