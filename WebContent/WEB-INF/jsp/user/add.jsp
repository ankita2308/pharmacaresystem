<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
   
    .col-xs-8
   {
   margin-bottom: 20px;
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
        <title>User Add </title>
             <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

    </head>
    
    <body class="mydiv">
    
    
       <fieldset class="scheduler-border">  <!-- group related element  -->
       <legend class="scheduler-border"></legend>
        <div class="container">
             <h1 align="center" style="color:red">Add User</h1>
            <form action="" method="post">
               <div class="form-group-row">
               
               <div class="col-xs-8">
                    <label>First Name</label>
                    <input type="text" name="first_name" class="form-control"  required="required"/>
                </div>
                <br>
                 <div class="col-xs-8">
                <label>Last Name</label>
                <input type="text" name="last_name" required="required" class="form-control"/>
                 </div>
                 <br>
                 
                 <div class="col-xs-8">
                <label>Email Id</label>
                <input type="email" name="email_id" required="required" pattern="^[a-zA-Z0-9]+(\.[_a-zA-Z0-9]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,15})$" class="form-control"/>
                </div>
                <br>
             
                <div class="col-xs-8">
                <label>Contact Number</label>
                <input type="number" name="contact_number" required="required" class="form-control" maxlength="10"/>
                </div>
                <br> 
                   
                <div class="col-xs-8">
                <label>Disease Type</label>
                <!-- diseaseId object of user class and .diseaseId is object of disease class -->
                <select name="diseaseId.diseaseId" required="required" class="form-control">
                    <option value="">Select The Type Of Disease</option>
                    <c:forEach var="d" items="${disease}">
                         <option value="${d.diseaseId}">${d.diseaseName}</option>
                        
                       <!-- <option value="${d.diseaseId}">${d.diseaseId}</option> --> 
                    </c:forEach>
                </select>
                </div>
                
                <br>
                
                <div class="col-xs-8">
                <label>Medicine Type</label>
                <select name="medicineId.medicineId" required="required" class="form-control">
                    <option value="">Select Any One Medicine</option>
                    <c:forEach var="m" items="${medicine}">
                        <option value="${m.medicineId}">${m.medicineName}</option>
                    </c:forEach>
                </select>
                </div> 
                
                
                </div>
                <br>
                <div  class="col-xs-8">
                    <button type="submit" class="btn btn-success btn-rounded ">Submit</button>
                    <button type="reset" class="btn btn-danger btn-rounded margin-left">Clear</button>
                </div>
            </form>
        </div>
        </fieldset>
        <div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
    </body>
</html>
