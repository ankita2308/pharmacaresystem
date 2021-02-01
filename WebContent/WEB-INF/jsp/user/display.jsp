<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
        .mydiv
   {
 
   background-image:url(https://hospitalpharmacyeurope.com/wp-content/uploads/2002/12/HPE-laptop-1.jpg);
   
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
.container
{
margin-top: 60px;}

.topnav-right {
  float: right;
  
 
}

    </style>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

    </head>
    <body class="mydiv">
   
        <nav class="navbar navbar-dark topnav-right">
        
            <a href="${SITE_URL}/aboutus"><span class="btn ">About Us</span></a>
            <a href="${SITE_URL}/contactus"><span class="btn ">Contact Us</span></a>
            <a href="${SITE_URL}/services"><span class="btn ">Services</span></a>
            <a href="<spring:url value='/role/logout'/>"><span class="btn ">LogOut</span></a>
        </nav> 
       <br>
       
        <div class="container">
            
          <table class="table table-striped table-hover">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email Id</th>
                    <th>Contact Number</th>
                    <th>Medicine Id</th>
                    <th>Disease Id</th>
                </tr>
                <c:forEach var="user" items="${user}">
                    <tr>
                        <td>${user.first_name}</td>
                        <td>${user.last_name}</td>
                        <td>${user.email_id }</td>
                        <td>${user.contact_number}</td>
                        <td>${user.medicineId.medicineName}</td>
                        <td>${user.diseaseId.diseaseName}</td>
                        
                      
                    
                    </tr>
                </c:forEach>

            </table>
            

            
        </div>
       
        
        
          <div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
    </body>
</html>
    