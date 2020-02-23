<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TechGenix</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.custom{
 width: 100%;
 font-size: medium;
}
body {
  background: #cfe2e6;
  background: -webkit-linear-gradient(to right, #cfe2e6, #5295a3);
  background: linear-gradient(to right, #cfe2e6, #5295a3);
  min-height: 100vh;
}
.navbar-brand{
 margin-top: 5%;
 font-size: x-large !important;
}
</style>
</head>
<body>
<div id="topheader">
<nav class="navbar navbar-inverse navbar-expand-md navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
     <a class="navbar-brand" href='<c:url value='/home'/>'><strong>TechGenix</strong></a>
    </div>
   <div class="custom">
    <ul class="nav navbar-nav navbar-right">
      <li><a href='<c:url value='/home'/>'>
        <span class="glyphicon glyphicon-home"></span> 
      </a></li>
      <li><a href='<c:url value='/aboutUs'/>'>About us</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
        Categories
      </a>
       <ul class="dropdown-menu">
        <c:forEach items="${categories }" var="category">
         <li><a href='<c:url value='/all/searchByCategory?searchCondition=${category.categoryName }'/>'>${category.categoryName}</a>
         </li>
        </c:forEach>
         <li><a href='<c:url value='/all/searchByCategory?searchCondition=All'/>'>All</a></li>
         <security:authorize access="hasRole('ROLE_ADMIN')">
         <li><a href='<c:url value='/addCategory'/>'>Add Category</a></li>
         </security:authorize>
       </ul>
      
      </li>
    
    <security:authorize access="hasRole('ROLE_ADMIN')">
     <li><a href='<c:url value='/admin/getproductform'/>'>Add Product</a>
    </li>
     <li><a href='<c:url value='/supplier/getsupplierform'/>'>Add Supplier</a>
    </security:authorize>
    
    <security:authorize access="hasRole('ROLE_USER')">
     <li><a href='<c:url value='/cart/getcart'/>'>
       <span class="glyphicon glyphicon-shopping-cart"></span>${cartSize }
     </a></li>
    </security:authorize>
    
     <c:if test="${pageContext.request.userPrincipal.name==null }">
       <li><a href='<c:url value='/all/ToRegister'/>'>
         <span class="glyphicon glyphicon-user"></span> Sign Up
         </a></li>
	   <li><a href='<c:url value='/login'/>'>
	     <span class="glyphicon glyphicon-log-in"></span> Log In
	     </a></li>
	 </c:if>
				
	 <c:if test="${pageContext.request.userPrincipal.name!=null }">
       <li><a href="#">Welcome ${Name }</a></li>
	   <li><a href='<c:url value='/j_spring_security_logout'/>'>
	     <span class="glyphicon glyphicon-log-out"></span>Log out
	     </a></li>
	 </c:if>
    </ul>
   </div>
  </div>
</nav>
</div>

</body>
</html>