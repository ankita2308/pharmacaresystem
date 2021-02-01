<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- assign value to object or variable with specified scopre -->
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"></c:set>
<!-- pagecotext-return portion of requested uri -->
<!DOCTYPE HTML>

<html>
<style>
   .mydiv
   {
 
   /*background-image: url(file:///D:/iacsdfeb20adjava/pharmafinal/WebContent/resources/images/i7.jpg);
   /*background-image:url(D:/iacsdfeb20adjava/pharmacare/WebContent/images/pharma1.jpg);
   background-image:url(${SITE_URL}/resources/images/i7.jpg)*/
   background-image: url(https://hospitalpharmacyeurope.com/wp-content/uploads/2002/12/HPE-laptop-1.jpg);
  
   
   background-size: cover;
   
   }
   
   .btn
   {
   color:green;
   }
  
   .text-center
   {
    margin-top: 30px;
   }
   .container
   {
   
   margin-top: 20px;
    margin-bottom: 40px;
   }
   
   #footer{
  margin-top: 400px;
  }
  
 
.center_footer{
color:navy blue;
font-size:15px;
font-weight:bold;
width:550px;
text-align:right;
float:right;
}

.topnav-right {
  float: right;
  
 
}
/*.item img
{
width: 300px;
height:1oovh;
}*/

.carousel-inner > .item {
  height: 30vh;
 
}

.carousel-inner > .item > img {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  
  transform: translate(-50%, -50%);
  max-height: 800px;
  width: auto;
}


</style>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="#">
        <title>Pharma Care System</title>
             
        
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
      
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>


    </head>
   
    <body class="mydiv">
            
           <!--  <div class="container" align="right"> 
           
            <a href="${SITE_URL}/aboutus" class="btn btn-primary  active margin-left"><span class="btn ">About Us</span></a>
            <a href="${SITE_URL}/contactus" class="btn btn-primary  active  margin-left"><span class="btn ">Contact Us</span></a>
            <a href="${SITE_URL}/services" class="btn btn-primary  active  margin-left"><span class="btn ">Services</span></a>
            </div>-->
            <nav class="navbar navbar-dark topnav-right">
            <a href="${SITE_URL}/aboutus"><span class="btn ">About Us</span></a>
            <a href="${SITE_URL}/contactus"><span class="btn ">Contact Us</span></a>
            <a href="${SITE_URL}/services"><span class="btn ">Services</span></a>
            </nav> 
           <br>
           <br>
           
         <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
  <div class="carousel-inner">
  <div class="item active">
  <img src= "https://wsmcmed.org/wp-content/uploads/2018/12/pharmacy-lab.jpg" style="height: 80%"></img>
  <div class="carousel-caption">
         <h3>We Care For Your Health</h3>
    </div>
  </div>
 <div class="item ">
 <img src= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL123NHWCJ_w4EWaoE0Im7_c3LwIw_deYzdA&usqp=CAU" style="height: 80%"></img>
  </div>
  </div>
  
  <!-- Left and right controls -->
 <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br>
<br>
<br>
            <center><h1 >Welcome to Pharma Care System</h1></center>
            <div class="text-center">
            
                <a class="btn btn-primary" href="role/login" role="button">Login As Per Role</a>
                 <a class="btn btn-primary" href="role/add" role="button">Register New Role</a>
             
            </div>
            
           
            <div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
            
    </body>
    
</html>
