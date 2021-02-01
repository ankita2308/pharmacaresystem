
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
   .error
   {
   color:red}
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

/* Full-width inputs */
input[type=text], input[type=password],input[type=role] {
  width: 100%;
  padding: 12px 10px;
  margin: 5px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add role</title>
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

    </head>
    <body class="mydiv">
        <script type="text/javascript">
function validateform(){  
	var name=document.myform.username.value;  
	var password=document.myform.password.value;  
	  
	if (name==null || name==""){  
	  alert("UserName can't be empty" );  
	  return false;  
	}else if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  
	}  
</script>
        <div class="container"> <!-- to create boxed content -->
            <h1 align="center" style="color:red">Add new Role</h1>
            <form  name="myform" action="" method="post"  onsubmit="return validateform()">
           
	       <div class="form-group-row">
	         <div class="container1 form-group col-xs-8 ">
             <label for="username"><b>Enter User Name</b></label>
              <input type="text" placeholder="Enter Username" name="username" required>
             
              <label for="password"><b>Enter Password</b></label>
               <input type="password" placeholder="Enter Password" name="password" required>
           
                
              <label for="role">Role</label>
                    <input type="text" name="role"  placeholder="Enter Role"  required/> 
                   
              </div>
               
                <br/>
                <br/>
                <div class="form-group col-xs-8">
                    <button type="submit"  style="align:center" class="btn btn-success btn-rounded">Submit</button>
                    <button type="reset" style="align:center" class="btn btn-danger btn-rounded">Clear</button>
                </div>
                </div>
            </form>
        </div>
         <div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
             
             <script type="text/javascript"></script>
    </body>
</html>
