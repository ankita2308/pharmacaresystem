
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add disease</title>
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

    </head>
    <body class="mydiv">
        <div class="container"> <!-- to create boxed content -->
            <h1 align="center" style="color:red">Add Diseases</h1>
            <form action="" method="post">
               
               <div>
                    <label>Disease Name</label>
                    <input type="text" name="diseaseName" class="form-control" required="required"/>
                </div>
                <br/>
                <br/>
               <div>
                    <button type="submit"  style="align:center" class="btn btn-success btn-rounded">Submit</button>
                    <button type="reset" style="align:center" class="btn btn-danger btn-rounded">Clear</button>
                </div>
                
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
