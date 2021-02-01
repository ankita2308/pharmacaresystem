<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
    <head>
        <style>
        
        
          .container
   {
   
   margin-top: 20px;
    margin-bottom: 40px;
   }
        .mydiv
   {
 
   background-image:url(https://hospitalpharmacyeurope.com/wp-content/uploads/2002/12/HPE-laptop-1.jpg);
  
   
   background-size: cover;
   
   }
  
  .h1
  {
  margin-left: 380px;}
     #footer{
  margin-top: 400px;
  }

.center_footer{
color:black;
font-size:15px;
font-weight:bold;
width:550px;
text-align:right;
float:right;
}
.list-group
{
display:inline-block;
margin-left: 430px;
list-style:decimal inside;
overflow: visible;


}
.list-group-item
{
display:list-item;}
.topnav-right
{
float: right;}
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display disease</title>
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    </head>
    <body class="mydiv">
        <div class="container">
           <!-- <div class="container" align="right">
            
             <a href="${pageContext.request.contextPath}/admin/display" class="btn btn-primary  active margin-left"><span class="btn glyphicon glyphicon-home"></span></a>
            <a href="${pageContext.request.contextPath}/aboutus" class="btn btn-primary  active margin-left"><span class="btn ">About Us</span></a>
            <a href="${pageContext.request.contextPath}/contactus" class="btn btn-primary  active  margin-left"><span class="btn ">Contact Us</span></a>
            <a href="${pageContext.request.contextPath}/services" class="btn btn-primary  active  margin-left"><span class="btn ">Services</span></a>
           
             </div> -->
             <div>
              <nav class="navbar navbar-dark topnav-right">
             <a href="${SITE_URL}/admin/display"><span class="btn ">Home</span></a>
            <a href="${SITE_URL}/aboutus"><span class="btn ">About Us</span></a>
            <a href="${SITE_URL}/contactus"><span class="btn ">Contact Us</span></a>
            <a href="${SITE_URL}/services"><span class="btn ">Services</span></a>
            </nav>
            </div>
            <br>
            <br>
            <div class="container" >
            <h1 class="h1">Disease List</h1>
            <ol class="list-group" >   <!-- class in bootstrap -->
                <c:forEach var="dis" items="${disease}">   <!-- iterate over collectio of disease object -->
                   <li class="list-group-item list-group-item-info" >${dis.diseaseName}</li>
                  
                    </c:forEach>
            </ol>
            </div>
        </div>
         <div id="footer">
            <marquee >  <!-- scrollig peiece of text -->
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
    </body>
</html>
