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
 
   background-image: url(https://hospitalpharmacyeurope.com/wp-content/uploads/2002/12/HPE-laptop-1.jpg);
   
   background-size: cover;
   
   }

body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left ;
  width: 33.3%;
  margin-bottom: 16px;
  margin-left:120px;
  padding: 0 8px;
}
.row
{
float:center;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  /* background-color: #474e5d;*/
 background-color:sky blue;
  color: baby green;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style></head>


<body class="mydiv">
<div class="about-section">
  <h1>About Us Page</h1>
  
  <p>  It  provides  a  solution  to Pharmacy  Organizations. The user  can access the system at any time, because it’s 24-hour 
availability. The  organization  people  can  do  administration  over  the 
products, users etc.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row" >
  <div class="column">
    <div class="card">
     
      <div class="container">
        <h2>Sunita Patil</h2>
        <p class="title">Team Member</p>
        <p>I am able to solve your Queries</p>
        <p>sunita@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  
  <div class="column">
    <div class="card">
      <div class="container">
        <h2>Ankita Shirke</h2>
        <p class="title">Team Member</p>
        <p>Available Anytime To solve the Queries</p>
        <p>ankita@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>
<div id="footer">
            <marquee >
            <div class="center_footer"> &copy;Pharma Care System.2020 All Rights Reserved</div>
            <!-- <div style="clear:both;"></div> -->
            </marquee>
             </div>
</body>
</html>