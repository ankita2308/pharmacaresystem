<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"></c:set>
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
    <c:if test="${requestScope.mesg != null}">
		<h5>Action Taken : ${requestScope.mesg}</h5>
	</c:if>
        <div class="container">
            <!--  <a href="${SITE_URL}/display" class="btn btn-secondary"><span class="glyphicon glyphicon-home"></span></a>-->
            <!-- <h1>Medicine List</h1>
            <ul>
                <c:forEach var="med" items="${medicine}">
                    
                       <p>Medicine Name: <li>${med.medicineName}</li></p>
                       
                    </c:forEach>
                  
                       
            </ul>-->
            <nav class="navbar navbar-dark topnav-right">
            <a href="${SITE_URL}/admin/display"><span class="btn ">Home</span></a>
            </nav>
            
            <table class="table table-striped table-hover">
                <tr>
                    <th>Medicine Name</th>
                    <th>Cost</th>
                    <th>Quantity</th>
                    <th>TotalAmount</th>
                    <th>Added Date</th>
                    <th>Modified Date</th>
                    <th>Status</th>
                    <th>Action</th>
                    
                </tr>
                <c:forEach var="med" items="${medicine}">
                    <tr>
                        <td>${med.medicineName}</td>
                        <td>${med.medicinePrice}</td>
                        <td>${med.quantity}</td>
                        <td>${med.quantity*med.medicinePrice}</td>
                        <td>${med.addedDate}</td>
                        <td>${med.modifiedDate}</td>
                        <td>
                    <c:choose>  
                        <c:when test="${med.status}">Available</c:when>
                        <c:otherwise>Unavailable</c:otherwise>
                    </c:choose>
                    </td>
                    <td>
                        <a href="${SITE_URL}/edit/${med.medicineId}" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="${SITE_URL}/delete/${med.medicineId}" class="btn btn-danger"><span class="glyphicon glyphicon-trash" onclick="return confirm('Are you sure you want to delete?')"></span></a>
                    </td>
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
    