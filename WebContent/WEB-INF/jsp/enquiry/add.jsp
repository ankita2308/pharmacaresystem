<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
            <style>
        .mydiv
   {
 
   background-image:url(file:///D:/iacsdfeb20adjava/pharmafinal/WebContent/images/i7.jpg);
   
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Enquiry</title>
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    </head>
    <body class="mydiv">
        <div class="container">
            <h1>Insert Enquiry</h1>
            <form action="" method="post">
                
                <label>First Name</label>
                <input type="text" name="firstName" required="required" class="form-control"/>
                <label>Last Name</label>
                <input type="text" name="lastName" required="required" class="form-control"/>
                <label>Email Id</label>
                <input type="email" name="emailId" required="required" class="form-control"/>
                <label>Contact Number</label>
                <input type="number" name="contactNumber" required="required" class="form-control"/>
                
                <label>Disease Type</label>
                <select name="disease.diseaseId" class="form-control">
                    <option value="">Select The Type Of Disease</option>
                    <c:forEach var="d" items="${disease}">
                        <option value="${d.diseaseId}">${d.diseaseName}</option>
                    </c:forEach>
                </select>
                 
                <label>Select Medicine</label>
                <select name="medicine.medicineId"  class="form-control">
                    <option value="">Select Any One Medicine</option>
                    <c:forEach var="m" items="${medicine}">
                        <option value="${m.medicineId}">${m.medicineName}</option>
                    </c:forEach>
                </select>
                
                <br>
                <button type="submit" class="btn btn-success">Submit</button>
                <button type="reset" class="btn btn-danger">Clear</button>
            </form>
        </div>
          <div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
    </body>
</html>
