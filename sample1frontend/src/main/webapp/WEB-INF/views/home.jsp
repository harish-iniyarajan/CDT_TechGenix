<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href='<c:url value='/resources/css/carousel.css'/>' type="text/css">
<title>Home</title>
</head>
<body>

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <ul class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active">
              <div class="thumbnail">
                <img class="img-responsive" src='<c:url value='/resources/images/camera.jpg'/>'>
              </div>
            </li>
            <li data-target="#myCarousel" data-slide-to="1">
            <div class="thumbnail">
                <img class="img-responsive" src='<c:url value='/resources/images/headphone.jpg'/>'>
             </div>
            </li>
            <li data-target="#myCarousel" data-slide-to="2">
            <div class="thumbnail">
                <img class="img-responsive" src='<c:url value='/resources/images/phone.jpg'/>'>
              </div>
            </li>
            <li data-target="#myCarousel" data-slide-to="3">
            <div class="thumbnail">
               <img class="img-responsive" src='<c:url value='/resources/images/watch1.jpg'/>'>
            </div>
          </ul>
          
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <div class="slide-1">
               <img src='<c:url value='/resources/images/camera.jpg'/>' width="100%" height="100%">
              </div>
              <div class="container">
                <div class="carousel-caption">
                  <h1>Cameras</h1>
                  <p>Better pixels at even better prices</p>
                  <p><a class="btn btn-lg btn-info" href='<c:url value='/all/searchByCategory?searchCondition=Cameras'/>' role="button">View more</a></p>
                </div>
              </div>
            </div>
            
            <div class="item">
              <div class="slide-2">
                <img src='<c:url value='/resources/images/headphone.jpg'/>' width="100%" height="100%">
              </div>
              <div class="container">
                <div class="carousel-caption">
                  <h1>Headphones</h1>
                  <p>Listen to music the way it should be</p>
                  <p><a class="btn btn-lg btn-info" href='<c:url value='/all/searchByCategory?searchCondition=Headphones'/>' role="button">View more</a></p>
                </div>
              </div>
            </div>
            
            <div class="item">
              <div class="slide-3">
                 <img src='<c:url value='/resources/images/phone.jpg'/>' width="100%" height="100%">
              </div>
              <div class="container">
                <div class="carousel-caption">
                  <h1>Smartphones</h1>
                  <p>Communicate smarter. Find the best phones here</p>
                  <p><a class="btn btn-lg btn-info" href='<c:url value='/all/searchByCategory?searchCondition=Phones'/>' role="button">View more</a></p>
                </div>
              </div>
            </div>
            
            <div class="item">
              <div class="slide-4">
                <img src='<c:url value='/resources/images/watch1.jpg'/>' width="100%" height="100%">
              </div>
              <div class="container">
                <div class="carousel-caption">
                  <h1>Watches</h1>
                  <p>We've got you covered with the best watches, round the clock!!</p>
                  <p><a class="btn btn-lg btn-info" href='<c:url value='/all/searchByCategory?searchCondition=Watches'/>' role="button">View more</a></p>
                </div>
              </div>
            </div>
          </div>
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
      </div> 
   
</body>
</html>
<%@include file="Footer.jsp" %>