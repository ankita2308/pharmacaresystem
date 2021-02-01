
<html>
<head>
<style>
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

.mydiv
   {
 
   background-image:url(https://hospitalpharmacyeurope.com/wp-content/uploads/2002/12/HPE-laptop-1.jpg);
   
   background-size: cover;
   
   }
   
.btn btn-default pull-left
{
margin-left: 20px;
}

<script language="JavaScript">
function validate()
{
var name=document.user.name.value;   //get current userame
var query=document.user.query.value;//get current query
var email=document.user.mail.value;//get current mail
var atpos=email.indexOf("@");  
var dotpos=email.lastIndexOf(".");

if(name.length==0 || comment.length==0 || email.length==0)
{
window.alert("ALL FIELDS ARE COMPULSORY");
return false;
}

if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
{
alert("Not a valid e-mail address");
return false;
}
}
</script>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
</head>
<body class="mydiv">
<!--<form name="user" action="mailto:Chavanr2223@gmail.com" method="post" enctype="text/plain" onsubmit="return validate(this)">  -->
<form action="" method="post">
<div class="container-fluid bg-grey">
  <h2 class="text-center">Get In Touch</h2>
   
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Pune,Maharashtra,India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 11001100</p>
      <p><span class="glyphicon glyphicon-envelope"></span> pharmacare@gmail.com</p>
    </div>
  
    <div class="col-sm-7">
    <div class="row">
        
        <div class="col-sm-6 form-group">
          <input class="form-control" id="destEmail" name="destEmail" placeholder="destEmail" type="email" required>
        </div>
        
        <div class="col-sm-6 form-group">
          <input class="form-control" id="subject" name="subject" placeholder="subject" type="text" required>
        </div>
      </div>
      
      <textarea class="form-control" id="message" name="message" placeholder="message"  rows="5"></textarea><br>
      
      <div class="row">
        <div class="col-sm-12 form-group" align="center">
          <!--  button class="btn btn-default pull-left" type="submit">Submit</button>-->
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-primary">Reset</button>
        </div>
      </div>
      
    </div>
  </div>
 
</div>
</form>
   
   <div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
             
</body>
</html>