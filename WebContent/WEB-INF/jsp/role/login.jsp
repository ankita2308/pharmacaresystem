<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
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
  
  .margin-left
  {
  margin-left: 20px;}
  .container
  {
  margin-top: 70px;}

.center_footer{
color:black;
font-size:15px;
font-weight:bold;
width:550px;
text-align:right;
float:right;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 10px;
  margin: 5px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.error{
color:red}

    </style>
<meta charset="UTF-8">
<title>Register</title>
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
	var name=document.myform.em.value;  
	var password=document.myform.pass.value;  
	  
	if (name==null || name==""){  
	  alert("UserName can't be empty" );  
	  return false;  
	}else if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  
	}  
</script>
<h5 style="color: red;">${requestScope.mesg}</h5>
 <h1 align="center" style="color:white">User Credentials</h1>
     
     
    <div class="container">
   
	<form name="myform"  method="post"  onsubmit="return validateform()">
	<div class="form-group-row">
	 <div class="container1 form-group col-xs-8 ">
    <label for="username"><b>Enter User Name</b></label>
    <input type="text" placeholder="Enter Username" name="em"  required>

    <label for="password"><b>Enter Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
     </div>
	
	<div class="form-group col-xs-8">
	<button type="submit" class="btn btn-primary">Submit</button>
	<button type="Reset" class="btn btn-primary margin-left">Reset</button>
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

</body>
</html>