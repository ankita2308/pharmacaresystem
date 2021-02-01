<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>


    <head>
    <style>
    .margin-left
    {
    margin-left: 80px;
    
    }
    .btn
    {
    border: 2px solid black;
    }
    .container
    {
    margin-top: 50px;
    }
    .mydiv
   {
 
   background-image:  url(https://hospitalpharmacyeurope.com/wp-content/uploads/2002/12/HPE-laptop-1.jpg);
   
   background-size: cover;
   
   }
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
    </style>
    
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
        </head>
    
    <body class="mydiv">
        <h1 align="center" style="color:DarkSlateGrey">Admin Panel</h1>
        <div class="container">
            <a href="${SITE_URL}" class="btn btn-warning btn-lg margin-left"><span class="glyphicon glyphicon-home"></span></a>
            <a href="${SITE_URL}/medicine" class="btn btn-warning  margin-left"><span class="btn glyphicon glyphicon-plus ">Medicine</span></a>
            <a href="${SITE_URL}/disease" class="btn btn-warning  margin-left"><span class="btn glyphicon glyphicon-plus">Disease</span></a>
            <a href="${SITE_URL}/view1" class="btn btn-warning  margin-left"><span class="btn ">Diseases</span></a>
            <a href="<spring:url value='/role/logout'/>" class="btn btn-warning margin-left"><span class="btn ">LogOut</span></a>
           
        </div> 
         <div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>


    </body>
</html>
