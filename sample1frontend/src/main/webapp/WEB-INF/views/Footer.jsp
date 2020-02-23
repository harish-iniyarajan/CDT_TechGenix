<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Footer</title>
<link href='<c:url value='/resources/css/Footer.css'/>' rel="stylesheet" type="text/css">
</head>
<body>

<footer id="footer" class="footer-1">
<div class="main-footer widgets-dark typo-light">
<div class="container">
<div class="row">
  
<div class="col-xs-12 col-sm-6 col-md-3">
<div class="widget subscribe no-box">
<h5 class="widget-title">TechGenix<span></span></h5>
<p>E-commerce is revolutionizing the way we all shop in India. Our vision is to create India's most reliable and frictionless commerce ecosystem that creates life-changing experiences for buyers and sellers. 
Why do you want to hop from one store to another in search of the latest phone when you can find it on the Internet in a single click? Not only mobiles. Continue shopping to learn more about our services</p>
</div>
</div>

<div class="col-xs-12 col-sm-6 col-md-3">
<div class="widget no-box">
<h5 class="widget-title">Quick Links<span></span></h5>
<ul class="thumbnail-widget">
<li>
<div class="thumb-content"><a href='<c:url value='/home'/>'>Home</a></div>	
</li>
<li>
<div class="thumb-content"><a href='<c:url value='/all/ToRegister'/>'>Get Started</a></div>	
</li>
<li>
<div class="thumb-content"><a href='<c:url value='/aboutUs'/>'>About Us</a></div>	
</li>
<li>
<div class="thumb-content"><a href='<c:url value='/all/searchByCategory?searchCondition=All'/>'>Categories</a></div>	
</li>
</ul>
</div>
</div>

<div class="col-xs-12 col-sm-6 col-md-3">
<div class="widget no-box">
<h5 class="widget-title">Start Shopping<span></span></h5>
<p>Start your shopping experience with the widest range of products now</p>
<c:if test="${pageContext.request.userPrincipal.name==null }">
<a class="btn btn-primary" href='<c:url value='/login'/>' target="_blank">Log In</a>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
<a class="btn btn-promary" href='<c:url value='/all/searchByCategory?searchCondition=All'/>'>View Products</a>
</c:if>
</div>
</div>

<div class="col-xs-12 col-sm-6 col-md-3">

<div class="widget no-box">
<h5 class="widget-title">Contact Us<span></span></h5>

<p><a href="mailto:iharish200@gmail.com" title="glorythemes">iharish200@gmail.com</a></p>
</div>
</div>
</div>
</div>
</div>

<div class="footer-copyright">
<div class="container">
<div class="row">
<div class="col-md-12 text-center">
<p>Copyright TechGenix © 2020. All rights reserved.</p>
</div>
</div>
</div>
</div>
</footer>

</body>
</html>