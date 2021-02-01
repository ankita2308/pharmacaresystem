
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
         <style>
        .mydiv
   {
 
   background-image:url(https://hospitalpharmacyeurope.com/wp-content/uploads/2002/12/HPE-laptop-1.jpg);
  
   background-size: cover;
  
   }
   
   .margin-left
    {
    margin-left: 40px;
    
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
        <title>Add medicine</title>
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
       <fieldset class="scheduler-border">  <!-- group related element  -->
       <legend class="scheduler-border"></legend>
        <div class="container">
            <h1 align="center" style="color:red">Add Medicine</h1>
            <form action="" method="post">
                <div class="form-group-row">
                <div class="col-xs-8">
                    <label>Medicine Name</label>
                    <input type="text" name="medicineName" class="form-control" required="required"/>
                </div>
                <br>
               
                <div class="col-xs-8">
                    <label>Cost</label>
                    <input type="text" name="medicinePrice" class="form-control" required="required"/>
                </div>
                <br>
               
                <div class="col-xs-8">
                    <label>Quantity</label>
                    <input type="text" name="quantity" class="form-control" required="required"/>
                </div>
                <br>
               
                <div class="col-xs-8" >
                    <label>Added Date</label>
                    <input type="text" name="addedDate" class="form-control" required="required"/>
                </div>
                <br>
                
                
                <!--  <div class="col-xs-8" >
                    <label>Modified Date</label>
                    <input type="text" name=" modifiedDate" class="form-control" required="required"/>
                </div>
                <br>-->
               
                <div class="col-xs-8">
                    <label >Status
                        <select name="status" required="required" class="form-control">
                            <option value="">Select Any One</option>
                            <option value="0">Unavailable</option>
                            <option value="1">Available</option>
                        </select>
                    </label>
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
