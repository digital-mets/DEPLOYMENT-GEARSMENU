<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="contactus" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Contact Approach Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<!-- //web font -->
<style>
.button {
  display: inline-block;
  border-radius: 4px;
    background-color: #35aaeb;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 20px;
  width: 170px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
  
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<script>

    function showalert() {
        aler("Successfully ");
    }
 </script>
</head>
<body>
      <form  runat="server" id="form1" >
<h1>Contact Us</h1>
<div class="main-agileits">
    <div class="left-form-w3-agile">
        <h2>Create Ticket from Web Portal</h2>
      
            <div class="upper">
                <div class="form-sub-w3">
                    <div class="icon-w3">
                        <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                    <input type="text"  autocomplete="off" name="Username" runat="server" id="txtusername" placeholder="Name" required="" />
                </div>
                <div class="form-sub-w3">
                    <div class="icon-w3">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    </div>
                    <input type="email"  autocomplete="off" runat="server" id="txtemail" name="Email" placeholder="Youremail@email.com" required="" />
                </div>
                <div class="form-sub-w3">
                    <div class="icon-w3">
                        <i class="fa fa-comment-o" aria-hidden="true"></i>
                    </div>
                    <textarea name="Comments"  runat="server" id="txtmessage" placeholder="Your Message" required=""></textarea>
                </div>
            </div>
            <div class="submit-w3l">
                <input  type="submit" value=" " id="submit1" title="" runat="server"   onserverclick="Unnamed_ServerClick">
            </div>
       
    </div>
<!--form-stars-here-->
		
<!--//form-ends-here-->
		<div class="right-map-w3-agile">
		<h2>Locate us</h2>
		
			<iframe src="https://www.google.com/maps/embed/v1/place?q=Governors%20Drive%2C%20Barrio%20Bancal%2C%20Carmona%2C%20Cavite&key=AIzaSyBLBuP3DWXxt4qY1t1LiPWTjibPpPwvJHo"  ></iframe>
					
			
					<div class="clear"></div>
         
					
		</div>

    <div class="right-map-w3-agile">
		
		
							<ul class="add">
								<li class="dot"> Governors Drive, Barrio Bancal, Carmona, Cavite </li>
								<li class="mobile"> (02) 254-5997</li>
                                <li class="mobile"> 09178886387</li>
                           
								<li class="mes">Email Address <a href="#">support@metsit.freshdesk.com</a></li>
                            <li> <a href="https://metsit.freshdesk.com/helpdesk" target="_blank"> <img src="../images/freshdesk.png" alt="freshdesk"></a> </li>
                                
                         <li>  <button   onclick="location.href = 'https://metsit.freshdesk.com';" class="button" style="vertical-align:middle" formnovalidate><span>Support </span> </button> </li>
						</ul>
						
			
					<div class="clear"></div>
         
					
		</div>
     <div class="right-map-w3-agile">

         
     </div>

<div class="clear"></div>
</div>
<!-- copyright -->
	<div class="copyright w3-agile">
			</div>

       
     </form>
	<!-- //copyright --> 
</body>
</html>