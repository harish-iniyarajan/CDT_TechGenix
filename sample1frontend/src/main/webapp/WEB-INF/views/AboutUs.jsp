<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
.font-italic{
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
          <li class="breadcrumb-item active" aria-current="page">About Us</li>
        </ol>
    </nav>
   </div>
   </div>
</div>

<div class="bg-light">
  <div class="container py-5">
    <div class="row h-100 align-items-center py-5">
      <div class="col-lg-6">
        <h1 class="display-4">About us</h1>
        <p class="lead text-muted mb-0">E-commerce is revolutionizing the way we all shop in India. Our vision is to create India's most reliable and frictionless commerce ecosystem that creates life-changing experiences for buyers and sellers.
                                         Why do you want to hop from one store to another in search of the latest phone when you can find it on the Internet in a single click? Not only mobiles.Below we list the variety of products we offer.</p>
      </div>
      <div class="col-lg-6 d-none d-lg-block"><img src='<c:url value='/resources/images/as.jpg'/>' class="img-fluid"></div>
    </div>
  </div>
</div>

<div class="bg-white py-5">
  <div class="container py-5">
    <div class="row align-items-center mb-5">
      <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
        <h2 class="font-weight-bold">Watches</h2>
        <p class="font-italic text-muted mb-4">"Everyone looks at your watch and it represents who you are, your values and your personal style" - Kobe Bryant. We help you level up your style game with the best in class collection of watches.</p>
        <a href='<c:url value='/all/searchByCategory?searchCondition=Watches'/>' class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
      </div>
      <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src='<c:url value='/resources/images/watch_as.jpg'/>' class="img-fluid mb-4 mb-lg-0"></div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-5 px-5 mx-auto"><img src='<c:url value='/resources/images/camera_as.jpg'/>' class="img-fluid mb-4 mb-lg-0"></div>
      <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
        <h2 class="font-weight-bold">Cameras</h2>
        <p class="font-italic text-muted mb-4">Photography lovers, you couldn't land at a better page than ours. Cutting-edge DSLR cameras, ever reliable point-and-shoot cameras, millennial favourite instant cameras or action cameras for adventure junkies: our range of cameras is as much for beginners as it is for professionals. Canon, Nikon, GoPro, Sony, and Fujifilm are some big names you'll find in our store.</p>
        <a href='<c:url value='/all/searchByCategory?searchCondition=Cameras'/>' class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
      </div>
    </div>
    <div class="row align-items-center mb-5">
      <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
        <h2 class="font-weight-bold">Headphones</h2>
        <p class="font-italic text-muted mb-4">We provide a superior end-to-end music experience so that you can feel the music just the way the artists intended it to sound from the studio. Get renowned performance and superior comfort from headphones designed to bring you closer to your music — and the world around you </p>
        <a href='<c:url value='/all/searchByCategory?searchCondition=Headphones'/>' class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
      </div>
      <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src='<c:url value='/resources/images/headphone_as.jpg'/>' class="img-fluid mb-4 mb-lg-0"></div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-5 px-5 mx-auto"><img src='<c:url value='/resources/images/smartphone_as.jpg'/>' class="img-fluid mb-4 mb-lg-0"></div>
      <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
        <h2 class="font-weight-bold">Smartphones</h2>
        <p class="font-italic text-muted mb-4">From budget phones to state-of-the-art smartphones, we have a mobile for everybody out there. Whether you're looking for larger, fuller screens, power-packed batteries, blazing-fast processors, beautification apps, high-tech selfie cameras or just large internal space, we take care of all the essentials.</p>
        <a href='<c:url value='/all/searchByCategory?searchCondition=Phones'/>' class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
      </div>
    </div>
  </div>
</div>

</body>
</html>
<%@include file="Footer.jsp" %>